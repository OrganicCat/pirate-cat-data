class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :years
      t.text :summary
      t.string :company
      t.references :resume

      t.timestamps
    end
    add_index :jobs, :resume_id
  end
end
