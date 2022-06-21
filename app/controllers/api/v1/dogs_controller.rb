class Api::V1::DogsController < ApplicationController
  def index
    dogs = Dog.all

    render json: dogs
  end

  def show
    render json: dog
  rescue ActiveRecord::RecordNotFound
    render json: { 'error': 'Record not found' }
  end

  def create
    breed = Breed.find(params[:breed])
    company = Company.find(params[:company])
    dog = Dog.create!(name: params[:name], breed: breed, company: company)

    render json: dog
  rescue ActiveRecord::RecordInvalid
    render json: { 'error': 'Unprocessable entry' }
  rescue ActiveRecord::RecordNotFound
    render json: { 'error': 'Record not found' }
  end

  def update
    if dog.update!(update_dog_params)
      render json: dog
    else
      render json: { 'error': 'Dog not found' }
    end
  end

  def destroy
    dog.destroy!

    render json: { 'message': 'Dog is deleted'}
  rescue ActiveRecord::RecordNotFound
    render json: { 'error': 'Record not found' }
  end

  private

  def dog
    @dog ||= Dog.find(params[:id])
  end

  def update_dog_params
    params.permit(:name)
  end
end
