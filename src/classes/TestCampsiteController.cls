@IsTest
public with sharing class TestCampsiteController {
	@IsTest
	private static void testRetrieveCampsites() {
		Campsite__c hotSprings = new Campsite__c(
			Name = 'Hot Springs',
			Description__c = 'A town rich in history and beaming with natural charm'
		);
		insert hotSprings;

		User camper = createCamperUser('Dan', 'Wuensch', 'dan@danwuensch.com');
		System.runAs(camper) {
			Test.startTest();
			String response = CampsiteController.retrieveCampsites();
			Test.stopTest();

			List<Campsite> campsites = (List<Campsite>)JSON.deserialize(response, List<Campsite>.class);
			System.assertEquals(1, campsites.size());
			System.assertEquals(hotSprings.Name, campsites[0].name);
			System.assertEquals(hotSprings.Description__c, campsites[0].description);
			System.assertEquals(hotSprings.Id, campsites[0].getRecord().Id);
		}
	}

	/**
	 * Creates a new Account, Contact, and Customer Community Plus User with the Camper Profile assigned.
	 *
	 * @param firstName First name used on Account, Contact, User
	 * @param lastName Last name used on Account, Contact, User
	 * @param email Email used for email and username fields
	 *
	 * @return Registered Customer Community Plus user
	 */
	@TestVisible
	private static User createCamperUser(String firstName, String lastName, String email) {
		Account camperAccount = new Account(
			Name = firstName + ' ' + lastName
		);
		insert camperAccount;

		Contact camperContact = new Contact(
			AccountId = camperAccount.Id,
			FirstName = firstName,
			LastName = lastName,
			Email = email
		);
		insert camperContact;

		User camperUser = new User(
			Alias = email.substring(0, 4),
			Email = email,
			EmailEncodingKey = 'UTF-8',
			ContactId = camperContact.Id,
			FirstName = firstName,
			LastName = lastName,
			LanguageLocaleKey = 'en_US',
			LocaleSidKey = 'en_US',
			ProfileId = CAMPER_PROFILE.Id,
			TimeZoneSidKey = 'America/New_York',
			Username = email
		);
		insert camperUser;
		return camperUser;
	}

	private static final String CAMPER_PROFILE_NAME = 'Camper';

	@TestVisible
	private static final Profile CAMPER_PROFILE = [
		SELECT
			Id
		FROM
			Profile
		WHERE
			Name = :CAMPER_PROFILE_NAME
	];
}