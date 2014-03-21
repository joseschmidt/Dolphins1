class Varience < ActiveRecord::Base
	has_many :subsets, inverse_of: :varience
end
