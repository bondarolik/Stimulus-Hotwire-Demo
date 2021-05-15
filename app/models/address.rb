class Address < ApplicationRecord
  belongs_to :state

  validates :title, :street, :street_number, :zipcode, presence: true

  def country
    self.try(:state).try(:country)
  end
end
