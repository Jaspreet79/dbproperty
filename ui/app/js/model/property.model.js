(function () {
    'use strict';

    function PropertyModelFactory( BaseModel) {
        var PropertyModel = function () {
            BaseModel.call(this);

            this.restartRequired = true;
            this.name = '';
            this.displayName = '';
            this.description = '';
            this.propertyType = '';
            this.defaultValue = '';
            this.value = '';
			this.categoryId = '';
        };

        PropertyModel.prototype.deSerialize = function (data) {
           
            this.id = data.category_id;
            this.displayName = data.displayName;
            this.description = data.description;
            this.restartRequired = data.restart_required;
            this.propertyType = data.property_type;
            this.defaultValue = data.default_value;
            this.value = data.value;
        };

        PropertyModel.prototype.serialize = function (data) {
           
            var result = {
                displayName: this.displayName,
                description: this.description,
                restart_required: this.restartRequired,
                property_type: this.propertyType,
                default_value: this.defaultValue,
                value: this.value,
            };

            if (this.id) {
                result.category_id = this.id;
            }

            return result;
        };

        BaseModel.extend(BaseModel, PropertyModel);
        return PropertyModel;
    }

    angular.module('hcm-property-management-ui')
        .factory('PropertyModel', [
            'BaseModel',
            PropertyModelFactory
        ]);
})();
