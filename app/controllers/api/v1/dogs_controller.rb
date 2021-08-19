module Api
  module V1
    class DogsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        dogs = Dog.all

        render json: DogSerializer.new(dogs, options).serializable_hash.to_json
      end

      def show
        dog = Dog.find_by(slug: params[:slug])

        render json: DogSerializer.new(dog, options).serializable_hash.to_json
      end

      def create
        dog = Dog.new(dog_params)

        if dog.save
          render json: DogSerializer.new(dog).serializable_hash.to_json
        else
          render json: { error: dog.errors.messages }, status: 422
        end
      end

      def update
        dog = Dog.find_by(slug: params[:slug])

        if dog.update(dog_params)
          render json: DogSerializer.new(dog, options).serializable_hash.to_json
        else
          render json: { error: dog.errors.messages }, status: 422
        end
      end

      def destroy
        dog = Dog.find_by(slug: params[:slug])

        if dog.destroy
          head :no_content
        else
          render json: { error: dog.errors.messages }, status: 422
        end
      end
      
      private

      def dog_params
        params.require(:dog).permit(:name, :image_url)
      end

      def options
        @options ||= { include: %i[reviews] }
      end
    end
  end
end