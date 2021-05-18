# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Material used for setting up user model and controller:
https://www.crondose.com/2019/04/building-the-user-model-and-session-controller-for-the-rails-api-authentication-app/


## Reward Model Curl Requests

Index: curl http://localhost:3000/api/v1/rewards

Create: curl -X POST -d reward[reward_name]="" -d reward[reward_content]="" -d reward[business_id]=""  http://localhost:3000/api/v1/rewards

Update: curl -X PATCH -d reward[reward_content]="" http://localhost:3000/api/v1/rewards/1

Destroy: curl -X DELETE http://localhost:3000/api/v1/rewards/1


## User Reward Model Curl Requests

Index: curl http://localhost:3000/api/v1/user_rewards

Create: curl -X POST -d user_reward[reward_id]="" -d user_reward[user_id]="" -d user_reward[redeemed]=""  http://localhost:3000/api/v1/user_rewards

Update: curl -X PATCH -d user_reward[redeemed]="" http://localhost:3000/api/v1/user_rewards/1

Destroy: curl -X DELETE http://localhost:3000/api/v1/user_rewards/1