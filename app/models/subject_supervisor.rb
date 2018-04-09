class SubjectSupervisor < ApplicationRecord
  belongs_to :subject
  belongs_to :supervisor
end
