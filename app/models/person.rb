class Person < ApplicationRecord
  validates :name, presence: true, length: { in: 1..100 }

  def to_s
    name
  end
end
