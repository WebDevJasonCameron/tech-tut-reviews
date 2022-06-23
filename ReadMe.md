# Tech Tut Readme

Originally, this was a Java application designed to let users rate technical tutorials from multiple sources. This application allows users to register a username and password, log in and create ads. The Tech Tut Review application was created through group effort and utilizes Java, JDBC, MySQL, CSS, Bootstrap and Maven.  While the structure remains much the same, I have rebuilt the application using Spring Boot, JPA, Hibernate and Thymeleaf.  Many of the things I am introducing to this application come from our recently completed capstone project.  It is this way that I can reinforce some solutions I found while working on the capstone and explore those other solutions my teammates accomplished while I was busy in other areas.

### Originally Accomplished
Here are some things the original application accomplished, and I will retain through the refactoring:
(Oh, but why are some of these items not marked off?  That would be because of gutting the application and restarting with SpringBoot.  I need to re-introduce these features)
- [X] User can create an account
- [ ] User can create a review on a tutorial of choice
- [ ] Review creation consisted of a thumb of a popular tutorial website, title, rating, and review comments
- [X] Review provides user with a link to visit the tutorial site
- [ ] User can edit review
- [ ] User can delete review
- [X] User can see a list of all reviews and select each one for more details
- [ ] User cannot delete or edict other user reviews
- [X] Main page shows number of users, reviews and existing categories
- [ ] Application provides filter by review name or category

### Refactor Focus
While I still believe that this type of web application would be amazing if it actually lived in the wild, my focus remains keeping it a sandbox of recently learned subjects.  As such, I will list the items that I want to accomplish for this refactor go-around.  I have found that these type of lists help me not stress about the MANY other things I REALLY want to see within this one application)

- [ ] Allow users to see other user's profiles without letting them edit or delete the user's reviews
- [ ] Get the rating to show between zero and five starts
- [ ] Let the user edit their profile 
- [X] let the user upload their own profile picture
- [ ] Application shows list of users
- [ ] The application has a very nice splash page when someone new visits the site
- [ ] Review pages show the creator's information such as name, avatar, and how many reviews they created

### Here is why I needed that Focus List
So, you might notice there is A LOT of things I didn't mention I would add to this social-media like application.  There are three reasons for this.  1) I need to wrap this application up quickly since we graduate soon and these applications may be viewed by a future employer. 2) I have another application I wanted finish right after this (Pizza Application). 3) It's time to move on to other highly demanded subjects such as REACT, which I will be starting after the Pizza App.  Despite this, here are some wish list items that I would like to see eventually:
- [ ] Comments on Reviews
- [ ] API data pulls from popular tutorial sites such as Udemy and LinkedIn Learning
- [ ] Calculations on how active a user is
- [ ] Calculations on total rating for tutorials
- [ ] Give users the ability to upvote other user reviews
- [ ] Create fake adds for the splash page based on tutorials that are for sale
- [ ] Let users bookmark tutorials based on how given reviews
- [ ] Give the user more ways to provide specific details within their review (for example: total tutorial time, cost, subject, and tutorial's creator/author)
- [ ] Settings page that gives the user the ability to set the site to different light modes and styles
- [ ] Ensure everything works through mobile
- [ ] And why not dream... allow sample videos to stream within the user's review... 

--- 
Perhaps these last things will be added when I refactor the application a second time

### Images Soon...