CREATE OR REPLACE PACKAGE BODY adaptivecard_templating_sdk AS

    FUNCTION expand (
        p_template_json  IN  CLOB,
        p_data_json      IN  CLOB
    ) RETURN CLOB IS

        v_json_schema  CLOB;
        v_key          VARCHAR2(20);
        v_value        VARCHAR2(200);
        v_return_json  CLOB := p_template_json;
    BEGIN
        SELECT
            JSON_DATAGUIDE(p_data_json)
        INTO v_json_schema
        FROM
            dual;

        FOR rec IN (
            SELECT
                *
            FROM
                JSON_TABLE ( v_json_schema, '$[*]'
                    COLUMNS (
                        key_path VARCHAR2 ( 40 ) PATH '$."o:path"'
                    )
                )
        ) LOOP
            v_key := substr(rec.key_path, 3);
            v_value := JSON_VALUE(p_data_json, rec.key_path);
            v_return_json := replace(v_return_json, '${'
                                                    || v_key
                                                    || '}', v_value);
        END LOOP;

        RETURN v_return_json;
    END;

END adaptivecard_templating_sdk;
/
