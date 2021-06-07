# README

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
