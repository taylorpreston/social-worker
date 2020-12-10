class CreateSupervisions < ActiveRecord::Migration[6.0]
  def change
    create_table :supervisions do |t|
      t.string :user_id, null: false
      t.string :supervisor_id, null: false
      t.boolean :signed_by_supervisor
      # Found at https://www.tn.gov/content/dam/tn/health/documents/Supervision_Hours_Log.pdf
      t.string :subject_of_supervision
      t.boolean :group
      t.datetime :time_in
      t.datetime :time_out
      t.date :work_date_start
      t.date :work_date_end
      t.string :supervision_content
      t.string :clincal_content
      t.integer :clincal_hours
      t.integer :non_clinical_hours
      t.timestamps
    end
  end
end
