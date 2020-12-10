
SUPERVISION_SUBJECTS = [ "Theory", "Technique", "Termination", "Diagnosis and Assessment", "Self Analysis", "Laws andRegulations","Individual Counseling Skills","Group Counseling Skills","Confidentiality","Ethics","Boundaries"]

class Supervision < ApplicationRecord
  belongs_to :supervisor, class_name: "User", foreign_key: "supervisor_id"
  belongs_to :user, class_name: "User", foreign_key: "user_id"

  def supervision_subects
    SUPERVISION_SUBJECTS
  end
end
