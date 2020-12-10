LICENSE_TYPES = %w(LMSW MSSW LAPSW LCSW Ph.D Psy.D Ph.W)

class User < ApplicationRecord
  include Clearance::User
  has_many :supervisions_as_supervisie, class_name: "Supervision"
  has_many :supervisions_as_supervisor, class_name: "Supervision", foreign_key: "supervisor_id"
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :license_number, presence: true
  validates :license_type, presence: true
  validates :license_type, inclusion: { in: LICENSE_TYPES }

  def license_types
    LICENSE_TYPES
  end
end