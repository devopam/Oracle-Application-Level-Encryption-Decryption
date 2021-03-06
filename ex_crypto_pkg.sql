/*----------------------------------------------------------------------------------------
-- FILE NAME        : ex_crypto_pkg.sql
-- Generated By     : Ex!lant Technologies Pvt Ltd.
-- Description      : Package declaration for ex_crypto Oracle based 3DES encryption and 
--                    decryption utilities
-- Date             : May 18, 2012
-- Author           : Ex!lant Development Team
-- Modification History:
------------------------------------------------------------------------------------------
--      When            Who                     What
------------------------------------------------------------------------------------------
--      18/05/2012      Ex! Dev Team            Initial Version
----------------------------------------------------------------------------------------*/

CREATE OR REPLACE PACKAGE ex_crypto
AUTHID CURRENT_USER
AS 
    FUNCTION f_encrypt( in_encrypt IN VARCHAR2, in_n_3des_flag IN PLS_INTEGER DEFAULT 0) RETURN VARCHAR2 DETERMINISTIC;
    FUNCTION f_encrypt( in_encrypt IN NUMBER, in_n_3des_flag IN PLS_INTEGER DEFAULT 0) RETURN VARCHAR2 DETERMINISTIC;
    FUNCTION f_encrypt_raw( in_encrypt IN RAW, in_n_3des_flag IN PLS_INTEGER DEFAULT 0) RETURN RAW DETERMINISTIC;
    FUNCTION f_decrypt( in_decrypt IN VARCHAR2, in_n_3des_flag IN PLS_INTEGER DEFAULT 0) RETURN VARCHAR2 DETERMINISTIC;
    FUNCTION f_decrypt_raw( in_decrypt IN RAW, in_n_3des_flag IN PLS_INTEGER DEFAULT 0) RETURN RAW DETERMINISTIC;
    
    gv_pgm_nm error_log.program_err_msg%TYPE := 'f_encrypt';
    gv_err_msg error_log.program_err_msg%TYPE;
    gv_o_encrypted_string VARCHAR2(32767);
    gv_o_decrypted_string VARCHAR2(32767);
    gv_raw_encryption_key RAW(32767);
    gv_string VARCHAR2(32767);
    gv_raw RAW(32767);
    gv_encryption_key VARCHAR2(56);
    gv_o_raw_encrypted_string RAW(32767);
    ge_null_input EXCEPTION;
    ge_invalid_key EXCEPTION;

END ex_crypto;
/
SHO ERR

CREATE OR REPLACE PUBLIC SYNONYM ex_crypto FOR ex_crypto;

GRANT EXECUTE ON ex_crypto TO PUBLIC;
