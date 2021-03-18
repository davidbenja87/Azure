-- Other Active Connections
SELECT * FROM sys.dm_pdw_exec_sessions 
where status <> 'Closed' and session_id <> session_id()
order by login_name asc
--and request_id='QID9746504'
and session_id='SID495147'

-- STEP 1: Identify the query you wish to investigate
-- Monitor active queries
SELECT *
FROM sys.dm_pdw_exec_requests
WHERE status not in ('Completed','Failed','Cancelled')
  AND session_id <> session_id()
  --AND session_id  IN ('SID494979',
--'SID494998')
ORDER BY submit_time DESC;


-- Find top 10 queries longest running queries
SELECT TOP 10 *
FROM sys.dm_pdw_exec_requests
ORDER BY total_elapsed_time DESC;


-- Dedalock quer /block query

select  A.request_id as WaitingRequestId,A.object_type as LockRequestType,
A.object_name as ObjectLockRequestName,
A.request_time as ObjectLockRequestTime,
B.session_id as BlockingSessionId,
B.request_id as BlockingRequestId
from sys.dm_pdw_waits A,
sys.dm_pdw_waits B
where A.object_type = B.object_type
and A.object_name = B.object_name
and A.state = 'Queued'
and B.state = 'Granted'
order by ObjectLockRequestTime asc


--Monitor waiting queries
/*
If you discover that your query is not making progress because it is waiting for a resource, 
here is a query that shows all the resources a query is waiting for.
*/
-- Find queries
-- Replace request_id with value from Step 1.

SELECT waits.session_id,
      waits.request_id,  
      requests.command,
      requests.status,
      requests.start_time,  
      waits.type,
      waits.state,
      waits.object_type,
      waits.object_name
FROM   sys.dm_pdw_waits waits
   JOIN  sys.dm_pdw_exec_requests requests
   ON waits.request_id=requests.request_id
--WHERE waits.request_id = 'QID####'
ORDER BY waits.object_name, waits.object_type, waits.state;

-- Monitor Memory

-- Memory consumption
SELECT
  pc1.cntr_value as Curr_Mem_KB,
  pc1.cntr_value/1024.0 as Curr_Mem_MB,
  (pc1.cntr_value/1048576.0) as Curr_Mem_GB,
  pc2.cntr_value as Max_Mem_KB,
  pc2.cntr_value/1024.0 as Max_Mem_MB,
  (pc2.cntr_value/1048576.0) as Max_Mem_GB,
  pc1.cntr_value * 100.0/pc2.cntr_value AS Memory_Utilization_Percentage,
  pc1.pdw_node_id
FROM
-- pc1: current memory
sys.dm_pdw_nodes_os_performance_counters AS pc1
-- pc2: total memory allowed for this SQL instance
JOIN sys.dm_pdw_nodes_os_performance_counters AS pc2
ON pc1.object_name = pc2.object_name AND pc1.pdw_node_id = pc2.pdw_node_id
WHERE
pc1.counter_name = 'Total Server Memory (KB)'
AND pc2.counter_name = 'Target Server Memory (KB)'

-- Monitor transaction log size
/* 
The following query returns the transaction log size on each distribution. 
If one of the log files is reaching 160 GB, you should consider scaling up your instance or 
limiting your transaction size.
*/
-- Transaction log size
SELECT
  instance_name as distribution_db,
  cntr_value*1.0/1048576 as log_file_size_used_GB,
  pdw_node_id
FROM sys.dm_pdw_nodes_os_performance_counters
WHERE
instance_name like 'Distribution_%'
AND counter_name = 'Log File(s) Used Size (KB)'
ORDER BY instance_name


-- Monitor polybase load

--The following query provides an approximate estimate of the progress of your load. The query only shows files currently being processed.
-- To track bytes and files

SELECT
    r.command,
    s.request_id,
    r.status,
    count(distinct input_name) as nbr_files,
    sum(s.bytes_processed)/1024/1024/1024 as gb_processed
FROM
    sys.dm_pdw_exec_requests r
    inner join sys.dm_pdw_dms_external_work s
        on r.request_id = s.request_id
GROUP BY
    r.command,
    s.request_id,
    r.status
ORDER BY
    nbr_files desc,
    gb_processed desc;


--	Monitor transaction log rollback
--If your queries are failing or taking a long time to proceed, you can check and monitor if you have any transactions rolling back.
	-- Monitor rollback

SELECT
    SUM(CASE WHEN t.database_transaction_next_undo_lsn IS NOT NULL THEN 1 ELSE 0 END),
    t.pdw_node_id,
    nod.[type]
FROM sys.dm_pdw_nodes_tran_database_transactions t
JOIN sys.dm_pdw_nodes nod ON t.pdw_node_id = nod.pdw_node_id
GROUP BY t.pdw_node_id, nod.[type]

-- Kill session

KILL 'SID494751'
