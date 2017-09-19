class Picture < ApplicationRecord

  validates :url, uniqueness: true,
                  length: { minimum: 2},
                  presence: true
  validates :artist, presence: true,
                     length: { minimum: 2 }
  validates :title, length: { minimum: 2 },
                    presence: true
  validates :url, :format => URI::regexp(%w(http https))

  def self.pictures_created_in_year(year)
    date = DateTime.new(year)
    end_date = date.end_of_year
    start_date = date.beginning_of_year
    Picture.where("created_at >= ? and created_at <= ?", start_date, end_date)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end


end
