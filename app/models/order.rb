class Order < ApplicationRecord
  belongs_to :author
  belongs_to :processor
  belongs_to :mainboard
  belongs_to :memoryram
  belongs_to :videoboard
end
