class Card < ActiveRecord::Base

after_initialize :set_year

def set_year
	self.year = Time.now.month > 11 ? Time.now.year+1 : Time.now.year
end


def human_name
  "#{self.name} #{self.surname}"
end

end
