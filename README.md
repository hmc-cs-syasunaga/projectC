# README

Contributors:
	Sarp Misoglu
	Shota Yasunaga

A lot of students have small on-campus businesses such as driving services, 
cutting hair, etc. However, they do not have an appropriate website for posting 
their businesses. ProjectC is a web platform where on-campus business
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
Key features with pictures

1. Main page. You can see the list of businesses available. 
![Main](https://github.com/sarpmis/projectC/blob/master/pictures/business_list.png)


2. Sign up. It allows users to sign up with their emails and password.

![Signup](https://github.com/sarpmis/projectC/blob/master/pictures/Sign_up.png)


3. Edit User Information. You can edit the information of the user. 
![UserInfo](https://github.com/sarpmis/projectC/blob/master/pictures/Edit_User_info.png)

4.Comments. You can comment on businesses.
![comments](https://github.com/sarpmis/projectC/blob/master/pictures/business_comment.png)

5.Detail of business. You can see the detail of businesses.
![Detail](https://github.com/sarpmis/projectC/blob/master/pictures/Business_detail.png)


Architecture of the Project:

The project is built around 5 models: User, User_info, Business, Appointment and Comment. 
Each of these models have their own data collection interfaces built with Ruby on
Rails' HTML forms. This data is stored in a database. The data is accessed 
through SQL queries or built-in Rails functions that automate these queries.
The data is then presented to the user through Rails Controllers and the interfaces
for accessing and organizing the data are styled with Sass CSS.

User can edit their own User_info, create/edit their business, make/approve appointment,
and make comments on businesses. Comments and Appointmens are related to business and User. 

Major Issues During Development:

The single biggest issue was that we tried to implement a Google Sign-in and 
a regular sign in at the same time, before even starting to get minimum functionality
from the program. The two user login models interfered with each other and sign-ins 
were a big problem. In the end we decided to start over from scratch since it would
take more time to fix the broken user models.

We also tried to edit user information through User model, but it was hard because 
devise is using the same model and routing gets to devise editting page instead of 
whatever we created. In order to go around this problem, we created user_info model. 

Unresolved problem
I did something to appointment controller at the very end and there is problem with 
creating new apppintnemts now. I have looked at what I have changed, but I have not
been able to identify the problem. 


References: 

Devise https://github.com/plataformatec/devise

Bootstrap (Bare) https://github.com/twbs/bootstrap-sass https://startbootstrap.com/template-overviews/bare/

Paperclip https://github.com/thoughtbot/paperclip

Ruby on Rails book https://www.amazon.co.jp/dp/B00JZKX6DE/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1
