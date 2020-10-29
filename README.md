# CFMoca

![ScreenShot](https://github.com/DataToken/CFMocha/blob/master/images/Image%201.jpg)
![ScreenShot](https://github.com/DataToken/CFMocha/blob/master/images/Image%202.jpg)
![ScreenShot](https://github.com/DataToken/CFMocha/blob/master/images/Image%204.jpg)

## About CF MOCA
*NOT* a complete Content Management System, work in progress; CFMoca aims at simplifying the W's. Where are my files? Why can't it just be routed? What is it doing? Who can answer my question?

- Honestly because it's built with CFWheels the answers to pretty much any W is answered with the community of CFWheels. The documentation is fairly ubundant. Best of all you can see so me different examples that you can create your own plugins, components, and site structure without feeling like you have no place, person, organization to turn too. 


## Installation

See [Installation] After you've unzipped the project ... 
- Place directory where you will house the application, make sure to Rename your directory. 
- Head over to CF Admin or Lucee Admin
 - Create a datasource with the name that you used for the application directory.
	- Make sure you've properly configured your sites host file.
	- go to www.yoursitesnames/wheels/ , the system will finish configuring CFWheels
	- Head over to migrator, and migrate all tables. CFWheels will load up all tables for the site.
	- You can now start seeing what makes the site tick and tock.

- If you in the future want to make the site go from development mode to production mode you will need to make an adjustment on the environment
 - /config/environment
	 FROM: set(environment="development"); TO: set(environment="production");

## Documentation

See the [Wiki](https://github.com/cfwheels/cfwheels-example-app/wiki/Installation)

## Requirements

 - Commandbox (to run locally)
 - Tested on Lucee 5.2.7 / ACF 2016 / ACF 11
 - MySQL 5.x
	- MariaDB
