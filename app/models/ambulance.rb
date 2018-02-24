class Ambulance < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{self.country} #{self.state} #{self.city} #{self.zipcode}"
  end
end
