(function () {
    'use strict';

    function _BaseCollectionFactory(LayoutBaseCollection, BaseModel) {
        var _BaseCollection = function () {
            LayoutBaseCollection.call(this);
        };

        _BaseCollection.prototype.deSerialize = function (data) {
            LayoutBaseCollection.prototype.deSerialize.call(this, data);

            // Paging, overriding the default from Layout
            this._paging.totalElements = data['totalElements'] || 0;
            this._paging.currentPage = data['number'] || 0;
            this._paging.nextPage = this._paging.currentPage + 1;
            this._paging.first = data['first'];
            this._paging.last = data['last'];
        };

        _BaseCollection.prototype.serialize = function () {
            // NOTHING TO DO
        };

        BaseModel.extend(LayoutBaseCollection, _BaseCollection);

        return _BaseCollection;
    }

    angular.module('hcm-property-management-ui')
        .factory('_BaseCollection', [
            'layout:LayoutBaseCollection',
            'BaseModel',
            _BaseCollectionFactory
        ]);
})();
