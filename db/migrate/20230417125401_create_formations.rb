# frozen_string_literal: true

class CreateFormations < ActiveRecord::Migration[7.0]
  def change
    create_table :formations do |t|
      t.string :name
      t.string :slug
      t.text :description, null: true, default: nil
      t.boolean :active, default: false

      t.timestamps
    end
    add_index :formations, :name, unique: true
    add_index :formations, :slug, unique: true
  end
end
