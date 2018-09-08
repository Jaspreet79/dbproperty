DECLARE
	l_count INTEGER;
BEGIN

---------------------------Supported Property Category Types---------------

select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='CSA';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'CSA','CLOUD Service Automation','These properties are used for configuration of CSA', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='OO';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'OO','Operation Orchistration','These properties are used for configuration of OO', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='Azure';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'Azure','Microsoft Azure','These properties are used for configuration of Azure', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='AWS';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'aws','aws','These properties are used for configuration of aws', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='CO';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'CO','CO','These properties are used for configuration of Cloud Optimizer ', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='UCMDB';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'UCMDB','UCMDB','These properties are used for configuration of UCMDB', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
	
select count(*) into l_count FROM db_property_category where property_category_id = 1 AND property_category_name='OMI';

IF (l_count = 0 ) THEN
    Insert into db_property_category
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'OMI','OMI','These properties are used for configuration of OMI', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
END;
