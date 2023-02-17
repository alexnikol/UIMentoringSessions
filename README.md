# UIMentoringSessions
Repository for mentees' UI practice, review, and improvements. Write to alexalmostengineer@gmail.com if you want to be a part of mentoring session

## **List of available challenges**
**Feature**                 | **Link on documentation (specs, use cases)**
--------------------------- | -----------------------------------------------
**`CoffeeShop UI Challenge`** | [Spec](UIMentoringSession/MenteesChallenges/CoffeeShop%20UI%20Challenge/README.md)

## How to work on challenges?

- Write to alexalmostengineer@gmail.com and ask to add to the contributor's list.
  You should be on the contributor's list if you want complete challenges with my feedback and comments
- inside each challenge, you have the README file with the link to the design and specification.
  If some of the urgent states/cases/questions are described, then you can issue a ticket, write an email or ask in the community
- Before your first challenge you should create PR with the following work:
    - clone this repository on your machine
    - create your personal branch for joining the project. The name of the challenge branch should be `join_challenges/YOUR_NAME`.
      For example `join_challenges/oleksandr_nikolaichuk`. Use `YOUR_NAME` for all your future branch parts names
    - you should create your factory file in `MenteesList` in the format `OleksandrNikolaichukFactory` (your name and 'Factory' word)
    - your factory should implement the `MenteeChallengesFactory` protocol
    - add your factory to the array in the `MenteesList` file
    - run the app and check if you are on the list!
    - commit and push these changes, create a PR to the `main` branch
    
- For the first and future challenges your previous PR should be merged in the `main` branch, after that, you can start!
    - choose one of the challenges from the `MenteesChallenges` directory
    - create your personal branch for the challenge. Name of the challenge branch you can find in the README of the needed challenge
      for `CoffeeShop UI Challenge` the branch format should be: `coffee-challenge-ui/oleksandr_nikolaichuk`.
      Challenges with the wrong format name would be rejected without review.
    - create your personal folder inside `MenteesChallenges\ CHOSEN_CHALLENGE`
      For example: `MenteesChallenges/CoffeeShop UI Challenge/OleksandrNikolaichuk`
    - all your custom types of data like class and struct should be with your name prefix.
      For example: `OleksandrNikolaichuk_CoffeeShopListViewController`
    - when you finished the challenge, create a PR on the main!
    
- All your work should be inside your folder in chosen challenge folder
