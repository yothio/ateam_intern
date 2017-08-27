class Blog < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { minimum: 1}
end
