do
$body$

DECLARE l_count integer;
---------------------------Supported Properties for different products------------
select count(*) into l_count FROM db_suite_product where suite_product_id = 1 AND product_name='CSA';
IF (l_count = 0 ) THEN
    Insert into db_suite_product
       (suite_product_id,product_name, display_name,description,created_on,updated_on)
    Values
       (1,'CSA','CLOUD SERVICE AUTOMATION','Hybrid Cloud Management Solution',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_suite_product where suite_product_id = 2 AND product_name='CSA';
IF (l_count = 0 ) THEN
    Insert into db_suite_product
       (suite_product_id,product_name, display_name,description,created_on,updated_on)
    Values
       (2,'CSA','CLOUD SERVICE AUTOMATION','Hybrid Cloud Management Solution',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
END
$body$    
