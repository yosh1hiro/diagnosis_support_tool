class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :name
      t.integer :disease_id
      t.float :lr_plus
      t.integer :lr_minus

      t.timestamps null: false
    end
  end
end
