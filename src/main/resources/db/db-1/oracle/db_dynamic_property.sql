
DECLARE
	l_count INTEGER;
BEGIN

--------------------------- New SUBSCRIPTION PAUSE STATUS and TRANSITION CANCELED ACTION INSTANCE status------------

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.provider.hostname';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modify, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.provider.hostname','localhost','localhost',1, 1, 1, ,1,'authentication provider' CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

END;
