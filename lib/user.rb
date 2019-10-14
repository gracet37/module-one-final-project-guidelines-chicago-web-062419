class User < ActiveRecord::Base
    has_many :favorites
    has_many :recipes, through: :favorites

#new user created - to be confirmed
    def create_user(username)
        User.create(username: username)
    end

#delete existing user
    def delete_user
        user = User.find_by(username: self.username)
        user.destroy
    end

#find User instance if a user selects "existing user"
    def find_user(username)
        User.find_by(username: username)
    end

# # User can add a recipe to their favorites
#     def add_favorites
#         Favorite.create(self,recipe)
#     end

# User can un-favorite
    def remove_from_favorites
        favorite = Favorite.find_by(user_id: self.id)
        favorite.delete
    end

#User wants to see their favorited recipes

    # def view_favorites

    # end










end


# puts "Hello, it's working."

# puts users = User.all.map(&:username)

    # csv_data = 
    # "1,mdrable0,Martin,Drable,PgYkJucV
    # 2,rgilhooley1,Roanne,Gilhooley,x5mjEZ
    # 3,krudolph2,Kipp,Rudolph,7Zn4U34jUVe1
    # 4,nounsworth3,Nanine,Ounsworth,WdYSros
    # 5,ahollyer4,Alden,Hollyer,7nyfwP"
    
    # rows = csv_data.split(“\n”)
    # users = rows.collect do |row|
    #     data = row.split(“,“)
    #     id = data[0]
    #     username = data[1]
    #     first_name = data[2]
    #     last_name = data[3]
    #     password = data[4]

    # user = User.new
    #     user.id = id
    #     user.username = username
    #     user.first_name = first_name
    #     user.last_name = last_name
    #     user.password = password
    # user
    # end
    
    # users
