# Guild model with team associations
class Guild < ActiveRecord::Base
	has_many :mythic
	has_many :heroic
	has_many :rbg
	self.table_name = 'guild'
end
