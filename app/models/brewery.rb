class Brewery < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :banner_url, presence: true
end
