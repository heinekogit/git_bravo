class Image < ApplicationRecord
    
    has_one_attached :filename
    
    belongs_to :route
    belongs_to :user
    


end
