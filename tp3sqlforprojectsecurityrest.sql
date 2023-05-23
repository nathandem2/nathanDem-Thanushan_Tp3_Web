--tableau utilisateur
BEGIN
  ORDS.enable_schema(
    p_enabled             => TRUE,
    p_schema              => 'RESTSCOTT',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'hr2',
    p_auto_rest_auth      => FALSE
  );

  COMMIT;
END;
/

--activation de la table emp pour acces REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE, -- Default  { TRUE | FALSE }
    p_schema       => 'RESTSCOTT',
    p_object       => 'UTILISATEUR',
    p_object_type  => 'TABLE', -- Default  { TABLE | VIEW }
    p_object_alias => 'utilisateurs'
  );

  COMMIT;
END;
/

-- confirmation de l'Activation du schema
SELECT *
FROM user_ords_schemas;

-- confirmation de l'activation de la table emp pour REST
SELECT *
FROM   user_ords_enabled_objects;


--tableau appareils

BEGIN
  ORDS.enable_schema(
    p_enabled             => TRUE,
    p_schema              => 'RESTSCOTT',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'hr2',
    p_auto_rest_auth      => FALSE
  );

  COMMIT;
END;
/

--activation de la table emp pour acces REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE, -- Default  { TRUE | FALSE }
    p_schema       => 'RESTSCOTT',
    p_object       => 'APPAREILS',
    p_object_type  => 'TABLE', -- Default  { TABLE | VIEW }
    p_object_alias => 'appareils'
  );

  COMMIT;
END;
/

-- confirmation de l'Activation du schema
SELECT *
FROM user_ords_schemas;

-- confirmation de l'activation de la table emp pour REST
SELECT *
FROM   user_ords_enabled_objects;

--tableau Rapport Virus

BEGIN
  ORDS.enable_schema(
    p_enabled             => TRUE,
    p_schema              => 'RESTSCOTT',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'hr2',
    p_auto_rest_auth      => FALSE
  );

  COMMIT;
END;
/

--activation de la table emp pour acces REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE, -- Default  { TRUE | FALSE }
    p_schema       => 'RESTSCOTT',
    p_object       => 'RAPPORTSVIRUS',
    p_object_type  => 'TABLE', -- Default  { TABLE | VIEW }
    p_object_alias => 'virus'
  );

  COMMIT;
END;
/

-- confirmation de l'Activation du schema
SELECT *
FROM user_ords_schemas;

-- confirmation de l'activation de la table emp pour REST
SELECT *
FROM   user_ords_enabled_objects;

--tableau LogsFirewall

BEGIN
  ORDS.enable_schema(
    p_enabled             => TRUE,
    p_schema              => 'RESTSCOTT',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'hr2',
    p_auto_rest_auth      => FALSE
  );

  COMMIT;
END;
/

--activation de la table emp pour acces REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE, -- Default  { TRUE | FALSE }
    p_schema       => 'RESTSCOTT',
    p_object       => 'LOGSFIREWALL',
    p_object_type  => 'TABLE', -- Default  { TABLE | VIEW }
    p_object_alias => 'firewall'
  );

  COMMIT;
END;
/

-- confirmation de l'Activation du schema
SELECT *
FROM user_ords_schemas;

-- confirmation de l'activation de la table emp pour REST
SELECT *
FROM   user_ords_enabled_objects;






