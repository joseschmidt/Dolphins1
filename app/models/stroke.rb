class Stroke < ActiveRecord::Base
	has_many :subsets, inverse_of: :stroke
end
