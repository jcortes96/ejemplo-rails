class Complaint < ApplicationRecord
  belongs_to :person

  validates :email, presence: true, uniqueness: { scope: :date }
  validates :body, presence: true, length: { in: 10..500 }

  before_validation :set_date

  def to_s
    "Queja de #{email} el día #{date}"
  end

  def set_date
    self.date ||= Date.today
  end
end
