class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
#Validations
validates   :name, uniqueness: true
validates   :age, numericality: {greater_than: 0}
validates :bio, length: { minimum: 30 }

def total_likes
    sum = 0
    self.posts.each do |post|
        sum += post.likes  
    end
    sum 
end



end

