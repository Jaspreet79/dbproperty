do
$body$
DECLARE l_count integer;

BEGIN

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
select count(*) into l_count FROM db_dynamic_property where property_id = 2 AND property_name='csa.provider.port';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id ,description, created_on, updated_on)
    Values
       (2, 'csa.provider.port','8444','8444',true, 1,2,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;

select count(*) into l_count FROM db_dynamic_property where property_id = 3 AND property_name='csa.proxy.schema';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (3, 'csa.proxy.schema',' ',' ',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 4 AND property_name='csa.provider.contentType';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (4, 'csa.provider.contentType','TOPSECRET',' ',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 5 AND property_name='csa.provider.agency';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (5, 'csa.provider.agency','','',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 6 AND property_name='csa.subscriber.portal.url';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (6, 'csa.subscriber.portal.url','','',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 7 AND property_name='csa.orgName.identifier';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (7, 'csa.orgName.identifier','','',true,1,3,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 8 AND property_name='csa.orgName.compatibility';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (8, 'csa.orgName.compatibility','','',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 9 AND property_name='securityAdminPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (9, 'securityAdminPassword','','',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 10 AND property_name='securityCsaReportingUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (10, 'securityCsaReportingUserPassword','','',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 11 AND property_name='securityTransportUserName';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (11, 'securityTransportUserName','csaTransportUser','csaTransportUser',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 12 AND property_name='securityTransportPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (12, 'securityTransportPassword','ENC(QZHvMeWngfw1oBsvmTQoD92E8vJH0PI+4tG6d+j7WV4=)','ENC(QZHvMeWngfw1oBsvmTQoD92E8vJH0PI+4tG6d+j7WV4=)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 13 AND property_name='securityOoInboundUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (13, 'securityOoInboundUserPassword','ENC(vXovO20FbAVb4lRFAnDayw==)','ENC(vXovO20FbAVb4lRFAnDayw==)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 14 AND property_name='securityCdaInboundUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (14, 'securityCdaInboundUserPassword','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 15 AND property_name='securityIdmTransportUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (15, 'securityIdmTransportUserPassword','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)','ENC(8oJoYwmZnSbvaSXVZlmTxDFUn5dLZRxgNh4DU5B87bQ=)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 16 AND property_name='securityCatalogAggregationTransportUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (16, 'securityCatalogAggregationTransportUserPassword','ENC(AR3r0wcMNgOVZ/cFv//Y60r1pYQ9BshH/mSb6VSaVj8=)','ENC(AR3r0wcMNgOVZ/cFv//Y60r1pYQ9BshH/mSb6VSaVj8=)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 17 AND property_name='securityCatalogAggregationTransportUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (17, 'securityCatalogAggregationTransportUserPassword','ENC(3oKr9eADA7bE53Zk2t9wIA==)','ENC(3oKr9eADA7bE53Zk2t9wIA==)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 18 AND property_name='securityCodarIntegrationUserPassword';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (18, 'securityCodarIntegrationUserPassword','ENC(V/11m/lcKKpJhZruUhlAWbMr2xQ6ME5uq9jx43hyeOg=)','ENC(V/11m/lcKKpJhZruUhlAWbMr2xQ6ME5uq9jx43hyeOg=)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
 select count(*) into l_count FROM db_dynamic_property where property_id = 19 AND property_name='Shared secret used for IDM Integration';
IF (l_count = 0 ) THEN
    Insert into db_dynamic_property
       (property_id, property_name, default_value, value,modifiable, property_category_id, property_type_id, description, created_on, updated_on)
    Values
       (19, 'Shared secret used for IDM Integration','ENC(3oKr9eADA7bE53Zk2t9wIA==)','ENC(3oKr9eADA7bE53Zk2t9wIA==)',true,1,1,'provider port',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
END IF;
END
$body$

