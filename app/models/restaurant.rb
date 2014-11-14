class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

end
