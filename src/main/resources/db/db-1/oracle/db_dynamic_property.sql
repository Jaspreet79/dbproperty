DECLARE
	l_count INTEGER;
BEGIN

--------------------------- Dynamic properties seeded data------------

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.provider.hostname';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.provider.hostname','localhost','localhost',1, 1,1,1,'authentication provider',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 2 AND property_name='csa.provider.port';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (2, 'csa.provider.port','8444','8444',1,1,2,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.proxy.schema';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.proxy.schema',' ',' ',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.provider.contentType';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.provider.contentType','TOPSECRET',' ',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.provider.agency';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.provider.agency','','',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.subscriber.portal.url';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.subscriber.portal.url','','',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 3 AND property_name='csa.orgName.identifier';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (3, 'csa.orgName.identifier','','',1,1,3,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='csa.orgName.compatibility';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'csa.orgName.compatibility','','',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityAdminPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityAdminPassword','','',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityCsaReportingUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityCsaReportingUserPassword','','',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityTransportUserName';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityTransportUserName','csaTransportUser','csaTransportUser',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityTransportPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityTransportPassword','ENC(QZHvMeWngfw1oBsvmTQoD92E8vJH0PI+4tG6d+j7WV4=)','ENC(QZHvMeWngfw1oBsvmTQoD92E8vJH0PI+4tG6d+j7WV4=)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityOoInboundUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityOoInboundUserPassword','ENC(vXovO20FbAVb4lRFAnDayw==)','ENC(vXovO20FbAVb4lRFAnDayw==)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityCdaInboundUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityCdaInboundUserPassword','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityIdmTransportUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityIdmTransportUserPassword','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityCatalogAggregationTransportUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityCatalogAggregationTransportUserPassword','ENC(AR3r0wcMNgOVZ/cFv//Y60r1pYQ9BshH/mSb6VSaVj8=)','ENC(AR3r0wcMNgOVZ/cFv//Y60r1pYQ9BshH/mSb6VSaVj8=)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityCatalogAggregationTransportUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityCatalogAggregationTransportUserPassword','ENC(3oKr9eADA7bE53Zk2t9wIA==)','ENC(3oKr9eADA7bE53Zk2t9wIA==)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='securityCodarIntegrationUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'securityCodarIntegrationUserPassword','ENC(V/11m/lcKKpJhZruUhlAWbMr2xQ6ME5uq9jx43hyeOg=)','ENC(V/11m/lcKKpJhZruUhlAWbMr2xQ6ME5uq9jx43hyeOg=)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 1 AND property_name='Shared secret used for  IDM Integration';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, suite_product_id, description, created_on, updated_on)
    Values
       (1, 'Shared secret used for IDM Integration','ENC(3oKr9eADA7bE53Zk2t9wIA==)','ENC(3oKr9eADA7bE53Zk2t9wIA==)',1,1,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;


END;
