class Actor < ActiveRecord::Base
  
  validates :name, :presence => true
  validates :name, length: {minimum: 3}
  validates :name, uniqueness: true
  
  has_many :projects
  has_many :movies, :through => :projects
  
  
end
