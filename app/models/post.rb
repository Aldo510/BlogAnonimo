class Post < ActiveRecord::Base
  # Remember to create a migration!
  #Decirle a el modelo que puede pertenecer a muchos tags
  has_many :tags
  #Validaciones para que tenga contenido y titulo
  validates :title, presence: true
  validates :content, presence: true
end
