# Doggo API

This is a basic Rails Api app, that implements CRUD (Create, Read, Update, Destroy) methods for the dogs endpoint.
- To flatten the response active-model-serializer is used,
- rspec & FactoryBotaare used for testing.

## Installation

To run this app locally Ruby and SQLite3 should be installed. Installation instructions can be found [here](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails).

Then, after cloning the project and moving to the project folder, the following commands should bring you up to speed:

`
     bundle install
     rails db:create
     rails db:migrate
     rails db:seed
     rails s
`

## Test instructions

By default Rails app runs on "http://127.0.0.1:3000". You should be able to make the following requests

### List all dogs

`GET localhost:3000/api/v1/dogs`

### Create a dog

`POST localhost:3000/api/v1/dogs/`

with params

`{
	"name": "bestie",
	"company": #{company.id},
	"breed": #{breed.id}
}`

### View a dog

`GET localhost:3000/api/v1/dogs/#{dog.id}`

### Update a dog

`PUT localhost:3000/api/v1/dogs/#{dog.id}`

with params (only name can be changed)

`{
	"name": "bestie",
}`

### Delete a dog

`DELETE localhost:3000/api/v1/dogs/#{dog.id}`

## RSPEC

To run test suits please use the following command:

Then, after cloning the project and moving to the project folder, the following commands should bring you up to speed:

`rspec`
