class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :years
      t.string :rating
      t.references :resume

      t.timestamps
    end
    add_index :skills, :resume_id
  end
end
