class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.text :header_content
      t.text :main_content
      t.text :summary_content

      t.timestamps
    end
  end
end
