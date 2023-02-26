class User < ApplicationRecord
    has_many :posts, class_name: "Post", foreign_key: "user_id"
    validates :name , length: {minimum:3, maximum:5} ,presence: true 
    validates :age , numericality: { only_integer: true , :greater_than_or_equal_to => 17}  ,presence: true 
    validates :user_id , numericality: { only_integer: true  , :greater_than_or_equal_to => 1}  ,presence: true 
end
