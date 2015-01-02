SET HEAD ON PAGES 3000 LINES 300 FEEDBACK ON

SELECT owner,object_name, object_type, created
FROM all_objects 
WHERE object_name IN ('ERROR_LOG', 'ERROR_SEQ', 'P_LOG_ERROR','EX_CRYPTO','ENCRYPTION_EXAMPLE' )
AND object_type IN ('SEQUENCE','SYNONYM','PACKAGE','PACKAGE BODY','PROCEDURE','TABLE')
ORDER BY owner,object_type,object_name;
