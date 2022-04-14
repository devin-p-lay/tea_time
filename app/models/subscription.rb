class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
  validates_presence_of :title,
                        :price,
                        :status,
                        :frequency

  enum status: [:active, :cancelled]

  enum frequency: [:weekly, :monthly, :quarterly, :yearly]
end