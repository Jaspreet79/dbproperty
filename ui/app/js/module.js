(function () {
    'use strict';
    angular
        .module('hcm-property-management-ui', [
            'hcm-ui-layout',
            'ui.router',
            'ui.select',
            'pascalprecht.translate',
            'nvd3',
            'bm.uiTour'
        ])
        .config(['$translateProvider', '$translatePartialLoaderProvider', '$urlRouterProvider', '$locationProvider', 
            function ($translateProvider, $translatePartialLoaderProvider, $urlRouterProvider, $locationProvider) {
                // Routing
                $locationProvider.html5Mode(false).hashPrefix('');
                $urlRouterProvider.when('', '/main/properties');
    
            }
        ]);
})();
