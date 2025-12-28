select * from Bank_loan_data

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Bank_loan_data';

-- Changing Data types of columns
alter table Bank_loan_data
alter column loan_amount int

alter table Bank_loan_data
alter column total_payment int

alter table Bank_loan_data
alter column total_acc int

DECLARE @sql NVARCHAR(MAX) = '';

SELECT @sql += 
'SELECT ''' + c.name + ''' AS ColumnName,
       COUNT(*) - SUM(CASE WHEN ' + QUOTENAME(c.name) + ' IS NULL THEN 1 ELSE 0 END) AS Non_Null_Count
FROM Bank_loan_Data
UNION ALL
'
FROM sys.columns c
WHERE object_id = OBJECT_ID('Bank_loan_Data');

SET @sql = LEFT(@sql, LEN(@sql) - 10); -- remove last UNION ALL

EXEC sp_executesql @sql;

select emp_title
from Bank_loan_data


