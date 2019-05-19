class Employee < ApplicationRecord
  belongs_to :dog

  #validation should always go in the model
validates :alias, :title, uniqueness: true

  def full_name
    first_name + " " + last_name
  end


end
