class Api::V1::DogsController < ApplicationController
  def index
    dogs = Dog.all

    render json: dogs, include: [:breed, :company]
  end
end
