class Practice < ActiveRecord::Base
 has_many :swimsets, dependent: :destroy, inverse_of: :practice
 accepts_nested_attributes_for :swimsets, allow_destroy: true
 belongs_to :group
end
