# README

Contributors:
	Sarp Misoglu
	Shota Yasunaga

Lots of students have small on-campus businesses such as driving services, 
cutting hair, etc. ProjectC is a web platform where on-campus business
owners can easily reach customers and consumers looking for such businesses can 
find what they are looking for, fast and easy.


The MVP must have the following functionality:
User logins and registers
Business registering
A business feed where users can browse through all available businesses
Making appointments with businesses/Businesses approving appointments
A page where users can see their appointments and their approval statuses
Comments on businesses

On ProjectC, you can register your on-campus business and connect it with 
other users or visitors (you don't have to be a member to scroll through the feed). 
You can also view comments and prices on businesses and send a business owner
an appointment request directly. You can keep track of your appointments and see
whether they were approved by the business. Instead of asking around on Facebook 
groups, you can easily find the on-campus service you're looking for on ProjectC!

Architecture of the Project:

The project is built around 4 models: User, Business, Appointment and Comment. 
Each of these models have their own data collection interfaces built with Ruby on
Rails' HTML forms. This data is stored in a database. The data is accessed 
through SQL queries or built-in Rails functions that automate these queries.
The data is then presented to the user through Rails Controllers and the interfaces
for accessing and organizing the data are styled with Sass CSS.

Major Issues During Development:

The single biggest issue was that we tried to implement a Google Sign-in and 
a regular sign in at the same time, before even starting to get minimum functionality
from the program. The two user login models interfered with each other and sign-ins 
were a big problem. In the end we decided to start over from scratch since it would
take more time to fix the broken user models. 

References: 