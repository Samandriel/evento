class Event < ActiveRecord::Base
	belongs_to :organizers, class_name: "User"

	acts_as_taggable

	extend FriendlyId
  	friendly_id :slug_candidates, use: :slugged

  	def slug_candidates
  		[:title,[:title, :location]]
  	end

	def event_owner(organizer_id)
		User.find_by id: organizer_id
	end	
end
