SELECT dest.TEXT AS [Query],
deqs.execution_count [Count],
deqs.last_execution_time AS [Time],
deqs.total_logical_reads AS [Logical Reads],
deqs.total_logical_writes AS [Logical Writes],
deqs.total_worker_time as [Worker Time],
deqs.execution_count as [Execution Count],
deqs.total_num_physical_reads [Total Physical Reads]
FROM sys.dm_exec_query_stats AS deqs
CROSS APPLY sys.dm_exec_sql_text(deqs.sql_handle) AS dest
ORDER BY deqs.last_execution_time DESC