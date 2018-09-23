(function () {
    'use strict';

    function MainController(NavigationMenuModel, $translate, $window, $state) {
        var vm = this;

        // Config the left nav menu
        vm.navigationMenuModel = new NavigationMenuModel();
        vm.navigationMenuModel.id = 'property_menu';
        vm.navigationMenuModel.displayName = "HCM Property Management";
        vm.navigationMenuModel.backgroundImageUrl = 'images/policy_mgmt_background-2.png';
        vm.navigationMenuModel.selectionType = NavigationMenuModel.SELECTION_TYPE_ROUTE;
        vm.navigationMenuModel.selectedItemId = 'menu_item_property';

        var nav_menu_section = vm.navigationMenuModel.addSection({
            id: 'main'
        });

        nav_menu_section.addItem({
            id: 'menu_item_property',
            displayName: "Properties",
            description: "Some description",
            icon: 'icon-grommet-notes',
            clickHandler: function (event, model) {},
            routeFactory: function (model) {
                return 'main.budgets';
            },
            enabled: true,
            visible: true
        });
    }

    angular.module('hcm-property-management-ui')
        .config(['$stateProvider',
            function ($stateProvider) {
                $stateProvider.state('main', {
                    url: '/main',
                    templateUrl: 'js/routes/main.html',
                    controller: 'MainController',
                    controllerAs: 'vm',
                    reloadOnSearch: false,
                    abstract: true
                });
            }
        ])
        .controller('MainController', [
            'layout:NavigationMenuModel',
            '$translate',
            '$window',
            '$state',
            MainController
        ]);
})();
