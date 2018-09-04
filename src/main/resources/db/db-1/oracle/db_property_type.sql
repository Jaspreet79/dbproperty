
DECLARE
	l_count INTEGER;
BEGIN

---------------------------Supported Data types for Properties---------------

select count(*) into l_count FROM db_property_type where property_type_id = 1 AND property_data_type='STRING';

IF (l_count = 0 ) THEN
    Insert into db_property_type
       (property_type_id, property_data_type,description, created_on, updated_on)
    Values
       (1,'STRING','String data type',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_type where property_type_id = 2 AND property_data_type='INT';

IF (l_count = 0 ) THEN
    Insert into db_property_type
       (property_type_id, property_data_type,description, created_on, updated_on)
    Values
       (2,'INT','Integer data type',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_type where property_type_id = 3 AND property_data_type='STRING';

IF (l_count = 0 ) THEN
    Insert into db_property_type
       (property_type_id, property_data_type,description, created_on, updated_on)
    Values
       (3,'BOOLEAN','Boolean data type',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_type where property_type_id = 4 AND property_data_type='STRING';

IF (l_count = 0 ) THEN
    Insert into db_property_type
       (property_type_id, property_data_type,description, created_on, updated_on)
    Values
       (4,'LIST','List data type',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

END;
