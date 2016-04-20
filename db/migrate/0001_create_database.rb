class CreateDatabase < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.index :email, unique: true
      t.timestamps null: false
    end
  end
end
