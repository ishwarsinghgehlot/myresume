class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.date :startdate
      t.date :enddate
      t.string :title
      t.string :company
      t.text :description

      t.timestamps
    end
  end
end
