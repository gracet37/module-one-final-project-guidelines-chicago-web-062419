class Recipe < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    #User can search all recipes using keyword

    # def self.search_by_ingredient(argument)
    #     search = Recipe.where("title like ?", "%#{argument}%")
    #     search
    # end

#     def search_recipes_by_ingredient
#         puts "What ingredient would you like to search recipes for?"
#         input = gets.chomp.capitalize
#         search = Recipe.where("title like ?", "%#{input}%") #returns all Chicken recipes
#         puts search.title
#         # binding.pry
#     end

#     def display_recipe(argument)
#         search = Recipe.find_by title: argument 
#         puts search
#     end

# #User can search by max calories
#     def self.search_by_calories(calories)
#         Recipe.title.where("calories < ?", calories)
#         # How do we show just the recipe.title that matches?
#         # show entire recipe.
#             # puts recipe.title
#             # puts recipe.ingredients
#             # puts recipe.directions
#             # puts recipe.calories
#         # Add to favorites?
#         # Back to search by prompt. 
#     end

# #Recipe can see how many times their recipe has been favorited
#     def favorites_count(recipe)
#        id = recipe.id
#        faves =  Favorite.where(recipe_id: id)
#        faves.count
#     end


end