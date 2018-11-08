#The Games Xchange

###A link (URL) to your published App
https://glacial-sea-56829.herokuapp.com/

###A link to your GitHub repository
https://github.com/asunanto/TGX

##Description

###Problem definition / purpose
There are currently many marketplaces like gumtree and ebay where user can list a whole variety of items, these platforms can be hard to navigate for specfic products due to the sheer volume of other products listed everyday and taking into account human error when creating listings it is common place to find to items listed in the wrong categories. Our Project is aimed to words solving this issue by creating a niche market place in this case we will be making a video game market place. Using our marketplace customers will be able to buy, trade and sell videogames, buying new video games are expensive investments our market place address this issue by allowing users to swap or sell their game to other users enabling everyone to play games they have been looking for at much cheaper prices or buy swapping for another game that they have already completed.

###Functionality / features

###Screenshots

###Tech stack (e.g. html, css, deployment platform, etc)
- HTML
- CSS
- Bootstrap
- Heroku
- Ruby on Rails
- Github

###Instructions on how to setup, configure and use your App.
Assuming that you are forking it from the github repo

1. Set postgres username at database.yml file
2. Create a .env file with the following variables;

DB_PASSWORD=

CLOUD_NAME=

API_KEY=

API_SECRET=

PUBLISHABLE_KEY=

SECRET_KEY=

3.Then do a db:setup, then db:seed if you are using an empty database

By default the app creates a basic user, if you want to add an admin
you can follow these steps

1. Register a user on the app
2. In your cmd, do a rails c
3. In console, to assign role to admin for the first user u can type User.first.add_role :admin

##Design documentation including,

###Design process
1. We first touched on user stories to get an idea how a user will use app
2. Then we touched on models that is required from the app based on our user stories
3. when we have our models we then decide on the fields we want for our user
4. From our models, we can now create an entity relationship diagram to establish connections with each of our models.
5. Then we first worked on program backbone together as a team. 
6. Once the program backbone is established we can then, work individually to work on features of our program 

###User stories
User

Buyer

- Access posts with a list of games
- Make comments on the game with emojis
- Purchase a game using stripe
- Search for a game name
- Can pick a game category (drop down box)

Seller

- Upload image and video of the game selling (optional)
- Can pick a category for game (drop down box)
- Add description and price
- Can CRUD their own post
- Can't buy their own game
- Add location of seller
- Make comments on the item with emojis

Anonymous

- Must register an account

Admin

- Can remove and update every post (admin has the ability to update fields of the posts)
- Delete users who are abusing the service (blocking considered)

###A workflow diagram of the user journey/s.

###Wireframes

###Database Entity Relationship Diagrams

##Details of planning process including,

###Project plan & timeline

###Screenshots of Trello board(s)

##Answers to the Short Answer questions

1.What is the need (i.e. challenge) that you will be addressing in your project?

Refer to Problem definition / purpose
       
2.Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

There are online services such as gumtree that caters to these needs. However, they do not have game trades as a focus. To address this niche area of the market, we would be providing a platform and service where we users can buy and sell games online
       
3.Describe the project will you be conducting and how your app will address the needs.
    
Our project aims to create a platform where users can post games they would like to sell as well as buying games from the post listed. we are including  a comment section on the posts so that potential buyers can negotiate with the sellers for lower prices or trade offers rather then just paying an asking price.
       
4.Describe the network infrastructure the App may be based on.

The infrastructure of the app would be similar to facebook/twitter marketplace. The user creates post and other users can comment on it and make purchases from the post. 

mvc, rails architecture?
https://medium.com/the-renaissance-developer/ruby-on-rails-http-mvc-and-routes-f02215a46a84

       
5.Identify and describe the software to be used in your App.

Postgres 

- powerful open source databasing server
- can safely store data
- easy to use 
- taught in class
- most importantly it is a requirement (like we have a choice :p)

Ruby on rails

- easy to deploy web app
- ideal for prototyping
- it is a requirement

Github

- back up and source code
- platform for developers to collaborate and stay happy
       
Heroku
- deploys apps online for users

4. Describe the network infrastructure the App may be based on.
When the user sends a HTTP/s packet request to the heroku server for our website, the website checks that packet for the destination MAC and IP address of the previous hop, and sends back a handshake packet to the user. once the handshake has been accepted between the server and the user computer. The server can start sending packets that contain header and data of the website. after the website has been fully rendered onto the user's computer. when a user has made a selection. that selection will be sent and compaired to expected selections, and the server then makes a handshake agreement to the user's computer to render the new page. if invalid data is sent or expected from the user. An error will be brought up and prevent the user from proceeding till the invalid data is corrected and then the user can proceed.

Cloudinary

- image and video storage cloud service 
       
Stripe

- handles payments in rails securely 
       
6.Identify the database to be used in your App and provide a justification for your choice.

We have decided on Postgres as it is the database that we are most familiar with, Its setup is easy and navigation of the the database is nice and simple to use.

7.Identify and describe the production database setup (i.e. postgres instance).

Heroku host the postgres database for our project, our database is made up of tables which are: posts, comments, users and categories.

8.Describe the architecture of your App.

Our app architecture is based on MVC. The model contains abstractions in our app where we can maintain relationships between object and database and handles validations and transactions. The view handles the presentation of data in a particular format which is triggered by the controller decision to present the data.The controller takes care of the flow: uses models to do queries, parses data, make decisions in which format it should present the data.

9.Explain the different high-level components (abstractions) in your App.

Our app consists of components which include Post, Comment, User and Category.

- User holds details for users which consists attributes such as username, password,
    email, phone number etc
- Post holds attributes such as title, description, image, video as well as other attributes from the model User and Categories
- Comment holds attributes for content and flagged as well as attributes from User and Post
- Category contains only brand as an attribute, this gets populated with seed file in our initial setup so that the when the user creates a new post they could access the drop down box under categories

10. Detail any third party services that your App will use.

Our app makes use of the following third party services:stripe, heroku, cloudinary, git hub, postgres,bootstrap, devise and rolify. We use stripe to control the payment methods of the app, all online purchases are handeld by it the only instance where stripe is not in controll of payments is when users arange with the poster for pick up and cash payment. we are using to heroku to host the live site as it the service we are most familar with also it it protects the users data stored in the database that heroku intializes. Cloudinary is the service we use to store images and videos user wish to use in conjunction with their post. We used github to manage the developement of the code and is perfect as a cloud back up if anthing where to happen to our local repos. Postgres is the database we are using in both development and production, we chose to use postgres as it is  a free open source service and has good reputation that will protect all personal user data that is stored in it, it is also the data base that we are most familar with. Bootstrap is used through out the site for quick and easy styling that makes the site easier to navigate and more appealing to users visualy. Devise is the ruby gem that is used to create users it also encrypts the data when it stores the users into the database. We utilised rolify to ad roles to our site so that standard users only have limited accses we do this because we dont users to be able to infect the site with malicious code breaking the site or worse getting access to other users private information. 

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
The website that is most similar to our market place is ozbargin in that signed in users can create post to list items for sale or in the case of oz bargin they can also list events happening at stores eg sales ect. users are also able to comment on post by other users to have discussion on the post much the same way our app is layed out. The big diffence between our market place an ozbargin is that ours if focused on the sale of videogames where as oz bargin users can create post for a vaiety of different categories. Another website that uses a similar layout to our app is twitter where user can create post with images or videos, discriptions and a tittle. twitter users can also make comments on post much like our app and the ozbargin website. Our app is also community driven much like twitter and oz bargin this means that we arent selling our own products on our app but instead are encouraging users to create their post and advertise their own products for sale or trade or to buy/offer trades to other users for their products.

 https://blog.twitter.com/engineering/en_us/topics/infrastructure/2017/the-infrastructure-behind-twitter-scale.html

12. Discuss the database relations to be implemented.
Our database consist of Users, Posts, comments and post_image
each user has zero or many relationship to posts and comments
each post has zero or many relationship to comments
each post has zero or many relationship to post_image
a comment belongs to one post and one user
a post belongs to one user

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
our project 
Under the User model, each user has many posts and comments.
Under the Post model, each post has many comments and many post_image and each comments belong to a post. 
Under the Comment model,each comments belongs to a user and a post.

14. Provide your database schema design.
    *erd
15. Provide User stories for your App.
User
Buy
- access an item with a list of games
- make comments on the item
- purchase on item
- add it to the cart (optional)
- can see if the item is sold (optional)
- buyer can purchase their own games but can buy others

Sell
- upload image and video of the item selling
- remove items they are selling
- can relist the item as sold (optional)
- can pick a category for item (drop down box)
- add description and price
- seller can CRUD their own post
- selling options – delivery / pick up (optional)
- contact details – location and email

As anonymous,
- must register an account

Admin
- admin can remove and update every post (admin have the abillty to update fields of the items)
- Delete users who are abusing the service (blocking considered)
- cannot buy their own games but can purchase others.

16. Provide Wireframes for your App.

17. Describe the way tasks are allocated and tracked in your project.
Throughout this task we are using a combination of trello, discord and slack to track what each memeber of the team is working on. Trello is used to assign cards to teams members and track what features have been completed or in progress. We use discord and slack to communicate with eachother in regards to what parts of the projects we are working and to assist eachother if needed.
trello  https://trello.com/b/dRldFKvs

18. Discuss how Agile methodology is being implemented in your project.
Our team have agreed on a stand up meeting at 10am every morning. we tracked everyone's progress and address our    issues during the meeting. if there is any problems and the task is of a high priority, we can have more of our members working on it.

19. Provide an overview and description of your Source control process.
Our team agreed on a fork workflow and Bo to be the repo manager. Our team members will each be assigned to an individual task. Once they have completed their tasks, they will raise a pull request on their own branch. Bo, along with his other collegues will do a code review before merging it to master

20. Provide an overview and description of your Testing process.
Our approach is to get our latest app deployed to heroku so that our team can test it live. if any bug was found each team member can raise a pull request on repo manager's master. The code will be reviewed and merged.

In addition We have included some tests for rspecs for the controllers and models. Our models can be tested by passing in each fields in the model and comparing each fields with their expected outcome. Controllers can be tested by passing in valid parameters and invalid parameters and comparing them with an expected outcome. Depending on the methods we can check whether the program have successfully loaded a page or redirected to a path. 

21. Discuss and analyse requirements related to information system security.
All user data must be encrypted and nobody is allowed access to the encrypted data even the admins to protects our users information. all online payment methods are to be handled by stripe which is secure. It is also our responsibility to make our customers aware not to share their login details with anyone. we also must make sure all of users data is erased if there is a breach or in if they leave the service.

22. Discuss methods you will use to protect information and data.
Throughout this project the team will take security precautions by using devise to encrypt the users data and stripe which automatically encrypts users payments details. We will also use authorization so that only admin as access to private user data however even the admins will not be able to view the encrypted data. We also prompt users when they are creating an account to use secure passwords which is at least 6 characters long have one capital letter/symbol and numbers.

23. Research what your legal obligations are in relation to handling user data.
As the creators of the app it is our responsibility to protect personal information from: theft, misuse, interference, loss, unauthorised access, modification, disclosure and Take reasonable steps to destroy or de-identify personal information when it is no longer needed for any purpose permitted under the Privacy Act 1988.

We must also make available an up-to-date and clear privacy policy, setting out how we will manage personal information. we are also responsible for ensuring that all personal information collected is accurate, complete and up to date. users must have access to their personal information on request. It is our responsibility to correct personal information if it has be made aware to us that it is either: inaccurate, incomplete, out of date, irrelevant or  misleading. we must delete any personnel information that is no longer being used for example if our user request to longer user our service we must wipe their information from our database. we must not use personal information for other any other purposes beside the functionality of our app. before collecting any personal information we must first ask our users and have them agree to the  terms of use. 

We are not allowed to use our customers data for marketing purposes unless we have their permission and even then we must be careful in what information is used. whats listed above is the basic procedures we must follow to protect our users data due to time constraints we will implement as much security measures as we can for our projects although we may not be able to implement all them. However if we were to launch our app officially we must meet all these requirements before we can launch.

