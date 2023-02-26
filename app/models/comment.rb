class Comment < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    belongs_to :post, class_name: "Post", foreign_key: "post_id"

    validates :title , length: {minimum:3} ,presence: true 
    validates :user_id , numericality: { only_integer: true  , :greater_than_or_equal_to => 1}  ,presence: true 
    validates :post_id , numericality: { only_integer: true  , :greater_than_or_equal_to => 1}  ,presence: true 
end
