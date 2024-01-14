class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :subject
      t.text :body
      t.boolean :published
      t.datetime :publish_at

      t.timestamps
    end
  end
end
