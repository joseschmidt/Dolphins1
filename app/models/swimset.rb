class Swimset < ActiveRecord::Base
	belongs_to :practice
	has_many :subsets
	accepts_nested_attributes_for :subsets
end
