(function() {
	'use strict';
	angular.module('campsites')
		.provider('visualforce', function() {
			var self = this;

			self.config = {};

			self.$get = function() {
				return {
					get: function() {
						return self.config;
					}
				}
			};

			self.set = function(config) {
				self.config = angular.merge(self.config, config);
			}
		});
})();