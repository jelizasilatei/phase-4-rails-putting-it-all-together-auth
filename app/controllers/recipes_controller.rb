class RecipesController < ApplicationController
    def create
        if session[:user_id]
          user = User.find_by(id: session[:user_id])
          recipe = user.recipes.build(recipe_params)
          if recipe.save
            render json: { recipe: recipe.as_json(include: :user) }, status: :created
          else
            render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
          end
        else
          render json: { errors: ["Unauthorized access"] }, status: :unauthorized
        end
      end
    
      def index
        if session[:user_id]
          recipes = Recipe.includes(:user).all
          render json: { recipes: recipes.as_json(include: :user) }
        else
          render json: { errors: ["Unauthorized access"] }, status: :unauthorized
        end
      end
    
      private
    
      def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
      end
end
