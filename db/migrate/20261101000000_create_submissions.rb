class CreateSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :submissions do |t|
      t.string :username1, null: false, limit: 120
      t.string :username2, null: false, limit: 120
      t.timestamps
    end
  end
end
