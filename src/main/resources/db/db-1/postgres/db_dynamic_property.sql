do
$body$

DECLARE l_count integer;
BEGIN

--------------------------- Dynamic properties seeded data------------

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.provider.hostname';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (1, 'csa.provider.hostname','localhost','localhost',true,1,1,'authentication provider',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 2 AND property_name='csa.provider.port';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (2, 'csa.provider.port','8444','8444',true, 1,2,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

END
$body$    

