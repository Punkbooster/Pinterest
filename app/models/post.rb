class Post < ActiveRecord::Base

	mount_uploader :photo, PhotoUploader

	acts_as_votable

	def self.search(query)
  		where("title like ?", "%#{query}%")
  		where("content like ?", "%#{query}%")
	end

	has_many :comments
end
