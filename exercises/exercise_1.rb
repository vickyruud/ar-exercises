require_relative '../setup'

puts "Exercise 1"
puts "----------"
# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, :minimum => 3
  validates :annual_revenue, numericality: {other_than: 0}

end
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, :inclusion => 40...200
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
end

Store.create(:name => 'Burnaby', :annual_revenue => 300000, :mens_apparel => true, :womens_apparel => true)
Store.create(:name => 'Richmond', :annual_revenue => 1260000, :mens_apparel => false, :womens_apparel => true)
Store.create(:name => 'Gastown', :annual_revenue => 190000, :mens_apparel => true, :womens_apparel => false)
puts Store.count
