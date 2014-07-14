class Event < ActiveRecord::Base
	extend FriendlyId
	friendly_id :slug_candidates, use: :slugged
	belongs_to :organizers, class_name: "User" 

	def slug_candidates
	[
		:title,
		[:title, :location],
	]
	end

end
