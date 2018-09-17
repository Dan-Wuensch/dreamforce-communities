(function() {
	'use strict';
	angular
		.module('campsites')
		.component('campsiteList', {
			templateUrl: function(visualforce) {
				return visualforce.get().views.campsiteListView;
			},
			controllerAs: 'campsiteList',
			bindings: {},
			controller: function($rootScope, visualforce) {
				var campsiteList = this;
				campsiteList.config = visualforce.get();
				campsiteList.campsites = null;

				campsiteList.retrieveCampsites = retrieveCampsites;

				campsiteList.$onInit = function() {
					campsiteList.retrieveCampsites();
				};

				function retrieveCampsites() {
					campsiteList.config.remoteActions.retrieveCampsites(function(result, event) {
						if (event.type && event.type === 'exception') {
							console.log('Shazbot!');
						} else {
							campsiteList.campsites = JSON.parse(result);
						}
						$rootScope.$digest();
					});
				}
			}
		})
})();