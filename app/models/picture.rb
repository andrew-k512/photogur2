class Picture < ApplicationRecord

# long form validations

  # validates_presence_of :artist, :url
  # validates_uniqueness_of :url
  # validates_length_of :title, :within => 3..20

# 'sexy' validations

  validates :url, uniqueness: true,
                  length: { minimum: 2},
                  presence: true
  validates :artist, presence: true,
                     length: { minimum: 2 }
  validates :title, length: { minimum: 2 },
                    presence: true

end
