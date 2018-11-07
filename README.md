Rails project
A link (URL) to your published App
https://glacial-sea-56829.herokuapp.com/
A link to your GitHub repository
https://github.com/asunanto/TGX

Description of your project, including,

Problem definition / purpose

Functionality / features
Screenshots
Tech stack (e.g. html, css, deployment platform, etc)
- html/css
- heroku
- ruby on rails

Instructions on how to setup, configure and use your App.
- 
Design documentation including,

Design process
User stories
A workflow diagram of the user journey/s.
Wireframes
Database Entity Relationship Diagrams
Details of planning process including,
Project plan & timeline
Screenshots of Trello board(s)
    1. What is the need (i.e. challenge) that you will be addressing in your project?
    there are currently many marketplaces like gumtree and ebay where user can list a whole variety of items, these platforms can be hard to navigate for specfic products due to the sheer volume of other products listed everyday and taking into account human error when creating listings it is common place to find to items listed in the wrong categories. Our Project is aimed to words solving this issue by creating a niche market place in this case we will be making a video game market place. Using our marketplace customers will be able to buy, trade and sell videogames, buying new video games are expensive investments our market place address this issue by allowing users to swap or sell their game to other users enabling everyone to play games they have been looking for at much cheaper prices or buy swapping for another game that they have already completed.
       
    2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
       There are online services such as gumtree that caters to these needs. However, they do not have game trades as a focus. To address this niche area of the market, we would be providing a platform and service where we users can buy and sell games online
       
    3. Describe the project will you be conducting and how. your App will address the needs.
    
       Our project aims to create a platform where users can post games they would like to sell as well as buying games from the post listed. we are including  a comment section on the posts so that potential buyers can negotiate with the sellers for lower prices or trade offers rather then just paying an asking price.
       
    4. Describe the network infrastructure the App may be based on.
       The infrastructure of the app would be similar to facebook/twitter marketplace. The user creates post and other users can comment on it and make purchases from the post. 

       mvc, rails architecture?

       
    5. Identify and describe the software to be used in your App.
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
       Cloudinary
       - image and video storage cloud service 
       Stripe
       - handles payments in rails securely 
       
    6. Identify the database to be used in your App and provide a justification for your choice.

       We have decided on Postgres as it is the database that we are most familiar with, Its setup is easy and navigation of the the database is nice and simple to use.

    7. Identify and describe the production database setup (i.e. postgres instance).
    Heroku host the postgres database for our project, our database is made up of tables which are: posts, comments, users and categories.


    8. Describe the architecture of your App.
    # write later
        Using MVC-- google MVC rails
Mitch
    9. Explain the different high-level components (abstractions) in your App.
    

    10. Detail any third party services that your App will use.
    stripe, heroku, cloudinary, git hub, postgres,bootstrap (refer to question 5)
Bo
    11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
mitch
    It is similar to twitter

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
    *screenshot schema.rb

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
skye
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
Mitch
    22. Discuss methods you will use to protect information and data.
Mitch
    23. Research what your legal obligations are in relation to handling user data.
Mitch

