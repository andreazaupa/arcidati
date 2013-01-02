class Card < ActiveRecord::Base

# after_initialize :set_year

# def set_year
# 	self.year = 2013#Time.now.month >= 11 ? Time.now.year+1 : Time.now.year
# end

def cur_year
  Time.now.month >= 11 ? Time.now.year+1 : Time.now.year
end

def date_helper
  self[:birth].present? ? self[:birth] : Time.now
end

def human_name
  "#{self.name} #{self.surname}"
end

end
