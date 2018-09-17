# Full-Stack Custom App Development with Community Cloud
A demonstration of development on Salesforce Community Cloud using AngularJS, Visualforce, Lightning Design System, and Lightning Flows.

# About
Provided as part of a Dreamforce Developer Theater presentation. Salesforce Communities allows you to develop custom apps for your customers that leverage the data and business processes your enterprise uses. This repository demonstrates various development techniques that are possible using Lightning Communities including AngularJS app development on Visualforce and Lightning Flows for declarative interactive processes.

## Getting Started

After setting up a new Salesforce Dev Org with Communities enabled, you can deploy the metadata in this repository to explore an example app for a Campsite Registration process! This project includes 

* App including tabs for Campsite related objects
* Lightning Component which displays progress through a Lightning Flow (see https://developer.salesforce.com/docs/atlas.en-us.lightning.meta/lightning/components_using_flow_stages_wrapper.htm)
* Apex classes for retrieval of available Campsites
* A Visualforce component to provide server-side data to AngularJS
* A Lightning Flow which guides users through an application process to reserve a campsite
* Custom Labels for UI messages
* Page Layouts for custom objects
* Custom objects for storing data related to reserving campsites
* A Visualforce page for hosting the Campsite List Angular JS app
* A Profile for your Customer Community Plus Users (the campers) with permissions to objects, fields, pages, etc.
* Static resources for AngularJS and jQuery libraries
* Resource Bundle containing an AngularJS app and UI views for displaying a list of campsites
* Custom tabs for the Application, Campsite, and Reservation custom objects

### Prerequisites

1. Salesforce Developer Edition Org - https://developer.salesforce.com/signup
2. Your preferred development environment for Salesforce (ex. IntelliJ with Illuminated Cloud, VSCode, text editor with Force.com migration tool)

### Installing

1.	Sign up for a new Salesforce Developer Edition Org
2.	Enable Chatter via Setup -> Chatter Settings -> Enable
3.	Assign your User a Role
4.	Enable Communities in the Org via Setup -> Communities Settings -> Enable communities
5.	Enable the External Sharing Model via Setup -> Sharing Settings -> Enable External Sharing Model
6.	Create a new Community using Template Create your Own via Setup -> All Communities -> New Community
7.	Select “Build Your Own” and select Get Started. Enter a Community Name and (optionally) URL prefix
8.	Deploy metadata from the repository to your new Org
9.	Add Camper Profile to Members list for the Community via Setup -> All Communities -> Workspaces (Your Community) -> Administration -> Members (select All Profiles to see the Camper Profile, then add to the list of Members)
10.	Add the Campsites Visualforce Page to the Site Visualforce Pages list via Setup -> All Communities -> Workspaces (Your Community) -> Administration -> Pages -> Go to Force.com -> Site Visualforce Pages
11.	Activate your Community via Administration -> Settings -> Activate Community
12.	Create a new Customer Community Plus user and assign them the Camper Profile. This is done by creating an Account, associated Contact with an Email Address, and selecting Enable Customer User via the Contact record. Select Customer Community Plus for the license type and Camper for Profile
13.	Set up a home page for your Community using Community Builder (Setup -> All Communities -> Builder (Your Community)). Open the Components view on the left-hand site and add a Visualforce item to the content area of the home page. For Visualforce Page Name, select the Campsites page provided in the repository.
14.	Create a new Page in Community Builder which is an Object Detail page for Campsites (Pages drop-down -> New Page -> Object Pages -> Campsite -> Create
15.	Add the Lightning Flow Lightning Component to the Campsite Detail page and set its flow parameter to the included Campsite_Reservation flow (should be set by default). Set the Context Object ID to {!recordId}
16.	Publish the Site
17.	Add a few Campsites!
18.	Navigate to the Contact you created previously and select Log in to Community as User
19. Apply for your Campsite

## Built With

* [Salesforce Lightning Platform](https://developer.salesforce.com/platform/force.com) - Lightning Platform lets developers rapidly create and deploy trusted cloud applications that are rock solid, secure, and scalable without having to worry about provisioning hardware or application stacks.
* [Salesforce Communities](https://www.salesforce.com/products/community-cloud/overview/) - Community Cloud focuses the power of Salesforce and the Lightning Platform towards the consumer.
* [AngularJS](https://angularjs.org/) - AngularJS is a JavaScript-based open-source front-end web application framework mainly maintained by Google and by a community of individuals and corporations to address many of the challenges encountered in developing single-page applications.
* [Lightning Design System](https://www.lightningdesignsystem.com/) - The Lightning Design System enables you to build rich enterprise experiences and custom applications with the patterns and established best practices that are native to Salesforce.

## Authors

* **Dan Wuensch** - (https://github.com/Dan-Wuensch)