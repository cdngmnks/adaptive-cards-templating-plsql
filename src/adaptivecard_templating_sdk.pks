CREATE OR REPLACE PACKAGE adaptivecard_templating_sdk AS
    FUNCTION expand (
        p_template_json  IN  CLOB,
        p_data_json      IN  CLOB
    ) RETURN CLOB;

END adaptivecard_templating_sdk;
/
