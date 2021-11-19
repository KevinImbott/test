class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :content
      t.integer :status
      t.string :type
      t.belongs_to :users, index: true, foreign_key: true
      t.timestamps
    end
  end
end
