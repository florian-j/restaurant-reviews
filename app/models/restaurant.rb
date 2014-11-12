class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}

end
