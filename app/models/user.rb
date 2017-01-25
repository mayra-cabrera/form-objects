class User < ActiveRecord::Base
  validates :first_name, presence: true
  belongs_to :company

  accepts_nested_attributes_for :company
end
