class Apartmenttype < ActiveRecord::Base
validates :title, presence: true
validates :title, uniqueness: true
validates :title, length: { minimum: 5,
    too_short: "%{count} characters is the minimum allowed" }

validates :rent, presence: true
validates :rent, numericality: true
validates :rent, length: { minimum: 3,
    too_short: "%{count} figure rent is the minimum allowed" }

validates :poster_url, presence: true
validates :poster_url, uniqueness: true
end
