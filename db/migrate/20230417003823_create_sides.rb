# frozen_string_literal: true

class CreateSides < ActiveRecord::Migration[7.0]
  def change
    create_table :sides do |t|
      t.string :name
      t.string :slug
      t.text :description, null: true, default: nil
      t.boolean :active, default: false

      t.timestamps
    end
    add_index :sides, :name, unique: true
    add_index :sides, :slug, unique: true
  end
end
