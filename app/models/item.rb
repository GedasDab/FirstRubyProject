class Item < ApplicationRecord
  enum status: %i[active sold]
  belongs_to :user
end
