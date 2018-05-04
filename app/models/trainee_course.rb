class TraineeCourse < ApplicationRecord
  belongs_to :trainee
  belongs_to :course

  enum status: { pending: 1, accepted: 2, completed: 3 }
end
