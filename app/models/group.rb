class Group < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, length: {maximum: 500}
end
