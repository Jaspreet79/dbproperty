(function () {
    'use strict';

    function PropertyCollectionFactory(_BaseCollection, PropertyModel, BaseModel) {
        var PropertyCollectionCollection = function () {
            _BaseCollection.call(this);
        };

        PropertyCollectionCollection.prototype.deSerialize = function (data) {
            _BaseCollection.prototype.deSerialize.call(this, data);
            data.content.forEach(function (item) {
                var model = new PropertyModel();
                model.deSerialize(item);
                this.add(model);
            }, this);
        };

        BaseModel.extend(_BaseCollection, PropertyCollectionCollection);

        return PropertyCollectionCollection;
    }

    angular.module('hcm-property-management-ui')
        .factory('PropertyCollection', [
            '_BaseCollection',
            'PropertyModel',
            'BaseModel',
            PropertyCollectionFactory
        ]);
})();
