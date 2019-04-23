class Route < ApplicationRecord
    
    belongs_to :user
    
    has_many :images
    
    def self.search(search)
      return Route.all unless search
      Route.where(['title LIKE ?', "%#{search}%"])
    end    
end
