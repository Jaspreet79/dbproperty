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

END;
