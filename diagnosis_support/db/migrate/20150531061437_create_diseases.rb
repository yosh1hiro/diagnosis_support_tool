class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.integer :cheif_complaint
      t.float :pretest_probability

      t.timestamps null: false
    end
  end
end
