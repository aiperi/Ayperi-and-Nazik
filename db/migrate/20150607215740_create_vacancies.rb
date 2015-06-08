class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :email
      t.string :position
      t.string :workPlace
      t.string :workingStatus
      t.string :description
      t.string :contactphone
      t.date :deadlinedate
      t.integer :salary
      t.string :companyInfo

      t.timestamps null: false
    end
  end
end
