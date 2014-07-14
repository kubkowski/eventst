class Event < ActiveRecord::Base
	extend FriendlyId
	friendly_id :slug_candidates, use: :slugged
	belongs_to :organizers, class_name: "User"
	has_many :taggings
	has_many :tags, through: :taggings

	def slug_candidates
	[
		:title,
		[:title, :location],
	]
	end

	def all_tags
		tags.map(&:name).join(", ")
	end

end
