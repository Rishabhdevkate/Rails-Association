class Article < ApplicationRecord
    # has_many :comments, as: :commentable
    validates :article_name, presence: true
end
