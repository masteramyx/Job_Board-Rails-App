class Job < ApplicationRecord
  validates :description, presence: { message: "Required"}
  validates :title, presence: {message: "Required"}
  validates :salary, presence: {message: "Required"}
end
