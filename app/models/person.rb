class Person < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
    format: { with: /(.+)@(.+)/ }
  validates :birthday, presence: true
  validates :zip, presence: true, length: { is: 5}, 
    format: { with: /\d{5}/ }
  validate :birthday_must_be_date

  def birthday_must_be_date
    birthday_before_type_cast.to_date
  rescue
    errors.add("Invalid birthday")
  end
end
