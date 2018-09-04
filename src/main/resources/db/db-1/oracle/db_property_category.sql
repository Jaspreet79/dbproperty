DECLARE
	l_count INTEGER;
BEGIN

---------------------------Supported Property Category Types---------------

select count(*) into l_count FROM property_category_name where property_category_id = 1 AND property_category_name='OO';

IF (l_count = 0 ) THEN
    Insert into db_property_type
       (property_category_id, property_category_name,display_name,description, created_on, updated_on)
    Values
       (1,'CSA','CLOUD Service Automation','These properties are used for configuration of CSA', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

END;
