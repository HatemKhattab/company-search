class Company < ActiveRecord::Base
  validates :name, presence: true
  validates :orgnr, presence: true
end
