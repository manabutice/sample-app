class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.string :name
      t.text :description

      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :attendances, [:user_id, :created_at]
  end
end