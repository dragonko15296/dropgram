class Drop < ActiveRecord::Base
  validates :content, length: {in: 1..255}
  belongs_to :user
end
