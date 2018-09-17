/**
 * Provides service methods for interacting with Campsites.
 */
public with sharing class CampsiteService {
	/**
	 * Gets all Campsites in the system that the current User context can see.
	 *
	 * @return List of Campsite__c sObjects with Id, Name, and Description fields populated
	 */
	public static List<Campsite__c> retrieveAllCampsites() {
		return [
			SELECT
				Id,
				Name,
				Description__c
			FROM
				Campsite__c
		];
	}
}