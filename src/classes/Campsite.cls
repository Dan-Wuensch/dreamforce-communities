/**
 * A data transfer object to communicate Campsite information between client and server.
 */
public with sharing class Campsite {
	@TestVisible
	private Id sid;
	@TestVisible
	private String name;
	@TestVisible
	private String description;

	public Campsite(Campsite__c record) {
		this.sid = record.Id;
		this.name = record.Name;
		this.description = record.Description__c;
	}

	/**
	 * Populates a Campsite sObject record with the data stored in this object.
	 *
	 * @return Populated Campsite__c record
	 */
	public Campsite__c getRecord() {
		return new Campsite__c(
			Id = this.sid,
			Name = this.name,
			Description__c = this.description
		);
	}
}