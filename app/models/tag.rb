class Tag < ActiveRecord::Base
  # Remember to create a migration!
  #Decirle a la base de datos que un tag puede tener muchos posts
  has_many :posts
end
