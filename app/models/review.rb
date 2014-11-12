class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  # validates :rating, presence: true, numericality: {only_integer: true, inclusion: { in: %w(0..5)}}
  validates :rating, presence: true, numericality: {only_integer: true,
                                                    greater_than_or_equal_to: 0,
                                                    less_than_or_equal_to: 5}
end
