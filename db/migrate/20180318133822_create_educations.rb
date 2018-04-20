class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :year
      t.string :course
      t.string :college
      t.text :description

      t.timestamps
    end
  end
end
