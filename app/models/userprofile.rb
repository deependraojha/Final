class Userprofile < ActiveRecord::Base
validates :name, presence: true
validates :name, uniqueness: true

validates :photo_url, presence: true
validates :photo_url, uniqueness: true
end
