/**
 * Provides client-facing endpoints for functionality related to Campsites
 */
public with sharing class CampsiteController {
	/**
	 * Finds all Campsites the current user has record-level access to.
	 *
	 * @return Serialized list of Campsite DTOs representing Campsites
	 */
	@RemoteAction
	public static String retrieveCampsites() {
		List<Campsite> campsites = new List<Campsite>();
		for (Campsite__c record : CampsiteService.retrieveAllCampsites()) {
			campsites.add(new Campsite(record));
		}
		return JSON.serialize(campsites);
	}
}