class TraineeSubject < ApplicationRecord
  belong_to :trainee
  belong_to :subject
end
