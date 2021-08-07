# CrossFit Benchmark Web Application
This application is a relationship between: Gyms, Users, Workouts, and Scores.
The user can:
- Search for a workout, add a workout, and edit/delete the workout only if no one added a score yet;
- Check the workouts' leaderboard, add/edit/delete a score that belongs to him;
- See all the CrossFit affiliate gyms available, join/leave a gym, add a new gym, edit/delete a gym if he belongs to this gym;
- See other athletes' profile page (email not displayed) and their scores if it's set up as a public score.

To sign up, the user needs to fill up first name, last name, unique email address, and password - not required to belong to a gym.\
To log in, the user has the option to log in with a Google account or to fill up the correct email address and password.\
An error message will show up with any field is left blank, if the user tries to create an account with an existing email address, or if the email address/password doesn't match during the log in.

**About The User**

*Who is the User?*\
It's specially build for those who practice CrossFit but it can be used for anyone who is looking for a workout.

*What is their pain point?*\
There're some CrossFit applications that CrossFit affiliate gyms can use to post their workout of the day (WOD) and athletes can add their scores but it's not possible to check other's people scores - only if you also belongs to this gym.\
Some workouts are well-known from everyone who practice CrossFit, for example the Girls Benchmarks and the Hero's WOD that you can find (part of them) in this applications but it's not possible to check all over the world scores about this same workout. 

*How do they use our solution to overcome this problem?*\
This web application helps the user to search for workouts, keep track of their scores, and compete with each other to be on the top of the leaderboard.

**About The APP**

*What this web application does? What is the user experience?*\
In the home page, the user is able to search for a workout - it can be a moviment that he wants to do (e.g. push-ups), a type of workout (e.g. for time), or by the name of a workout.\
Without sign up or log in, the user can see all the workouts and the information of each workout but not able to see the workouts' score. The user is also able to see the list of the CrossFit affiliate gyms but not able to join without sign up or log in.\
After create an account or log in, the user lands to his profile page with his personal information and all his workouts' scores. The user is able to add a new score and choose it to be public (everyone can see) or private (only the user can see). Join or leave a gym (not able to be part of more than 1 gym at the same time), see other's athletes profile page with their personal info (not display their email) and scores.\
Once is log in, the user can also add a workout, edit/delete a workout that there's no scores yet, edit/delete a gym that he belongs to, edit/delete his own score.

**Flow Diagram**\
*Models*\
Gyms, Users, Workouts, and Scores.

*Relationship*\
This application is has_many through relationship.\
A gym has many users and a user belongs to a gym.\
A user has many scores and has many workouts through scores.\
A workout has many scores and has many users through scores.\
A score belongs to a user and belongs to a workout.

*Attributes*\
A gym has a name (unique and required), website, and address. It can't create a gym without a name - A user can create an account without belongs to a gym and join a gym or create a gym later.\
A user has a first name (required), last name (required), email (unique and required), password (required), age, height, weight, country, and gym id.
A workout has a name (unique and required), wod_group, category (required), description (required), and about.
A score can be RX (when the user is able to do all the moviment as described, or scale if not), result time (for the workout categories that the result is a time), result reps (for the workouts categories that the result is the number of repetitions achieved by the athlete), date, notes, public (if everyone can see this score), user id, and workout id.

Flow diagram [here](https://drive.google.com/file/d/1N-ZeTPwMwMq8o3Aytgb_hThB8fndvzzV/view?usp=sharing)
## Instalation
Fork and clone this repo.

Install all the gems with:
```
    $ bundle install
```

Execute the databse:
```
    $ rails db:migrate
```

And then populate the database:
```
    $ rails db:seed
```
## Usage

To run type `rails s` in your terminar

and go to your [local web server](http://localhost:3000/)
## Contributing

This project is intended to be a safe and welcoming space for collaboration.
Bug reports and pull requests are welcome on GitHub at [Luciana GitHub Profile](https://github.com/luciana-lab).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CrossFit Benchmark project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/luciana-lab/crossfit-benchmark-project/blob/main/CODE_OF_CONDUCT.md).

## Extras
Project Walkthrough Video [here](https://youtu.be/zjdYMrgik_A)\
Blog Post [here](https://luciana-lab.medium.com/rails-time-select-form-and-view-bonus-date-d2700d913a50)\
Heroku link [here]()\
30 minutes video coding [here](https://youtu.be/T7HTeDDb1Tc)