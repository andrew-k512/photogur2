class Picture < ApplicationRecord

  validates_presence_of :artist, :url
  validates_uniqueness_of :url
  validates_length_of :title, :within => 3..20 

# validates :url, uniqueness: true
# validates :url, presence: true

end
