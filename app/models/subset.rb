class Subset < ActiveRecord::Base
	belongs_to :swimset, inverse_of: :subsets	
  	belongs_to :stroke, inverse_of: :subsets
  	belongs_to :varience, inverse_of: :subsets
end
