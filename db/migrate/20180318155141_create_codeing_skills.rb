class CreateCodeingSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :codeing_skills do |t|
      t.string :language
      t.integer :progress

      t.timestamps
    end
  end
end
