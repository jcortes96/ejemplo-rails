class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.string :email, null: false
      t.belongs_to :person, foreign_key: true
      t.text :body
      t.date :date

      t.timestamps
    end
  end
end
