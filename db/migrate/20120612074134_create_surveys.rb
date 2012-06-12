class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :company
      t.string :name
      t.string :department
      t.string :phone
      t.string :email
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.string :q10

      t.timestamps
    end
  end
end
