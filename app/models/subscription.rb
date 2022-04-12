class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
  validates_presence_of :title,
                        :price,
                        :status,
                        :frequency

  enum status: {
    active: 0,
    cancelled: 1
  }

  enum frequency: {
    weekly: 0,
    monthly: 1,
    quarterly: 2,
    yearly: 3
  }
end