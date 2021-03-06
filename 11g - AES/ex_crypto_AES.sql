/*----------------------------------------------------------------------------------------
-- FILE NAME        : ex_crypto_aes.sql
-- Generated By     : Ex!lant Technologies Pvt Ltd.
-- Description      : Package for ex_crypto_aes Oracle based DBMS_CRYPTO encryption and 
--                    decryption utilities
-- Date             : Sept 17, 2012
-- Author           : Exilant Technologies Private Limited
-- Modification History:
------------------------------------------------------------------------------------------
--      When            Who                     What
------------------------------------------------------------------------------------------
--      17/09/2012      Ex! Dev Team            Initial Version
----------------------------------------------------------------------------------------*/
CREATE OR REPLACE PACKAGE ex_crypto_aes
AS 
    FUNCTION f_encrypt_raw( in_encrypt IN RAW, in_aes_size IN PLS_INTEGER DEFAULT 128,numeric_flag IN PLS_INTEGER DEFAULT 0) RETURN RAW DETERMINISTIC;
    FUNCTION f_string_encrypt( in_encrypt IN VARCHAR2, in_aes_size IN PLS_INTEGER DEFAULT 128, numeric_flag IN PLS_INTEGER DEFAULT 0 ) RETURN RAW DETERMINISTIC;
    FUNCTION f_number_encrypt( in_encrypt IN NUMBER, in_aes_size IN PLS_INTEGER DEFAULT 128, numeric_flag IN PLS_INTEGER DEFAULT 0) RETURN RAW DETERMINISTIC;
    FUNCTION f_decrypt_raw( in_decrypt IN RAW, in_aes_size IN PLS_INTEGER DEFAULT 128, numeric_flag IN PLS_INTEGER DEFAULT 0) RETURN RAW DETERMINISTIC;
    FUNCTION f_string_decrypt( in_decrypt IN RAW, in_aes_size IN PLS_INTEGER DEFAULT 128, numeric_flag IN PLS_INTEGER DEFAULT 0) RETURN VARCHAR2 DETERMINISTIC;
    gv_pgm_nm error_log.program_err_msg%TYPE;
    gv_err_msg error_log.program_err_msg%TYPE;
    ge_null_input EXCEPTION;

END ex_crypto_aes;
/

SHO ERR;


CREATE OR REPLACE PUBLIC SYNONYM ex_crypto_aes FOR ex_crypto_aes;

GRANT EXECUTE ON ex_crypto_aes TO PUBLIC;
