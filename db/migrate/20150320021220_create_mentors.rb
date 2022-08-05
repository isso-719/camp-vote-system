class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.string :name, null: false
      t.integer :count, default: 0, null: false
      t.string :image, default: "./assets/images/user-solid.svg", null: false
      t.timestamps null: false
    end
  end
end
