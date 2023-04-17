# frozen_string_literal: true

class CreateSituations < ActiveRecord::Migration[7.0]
  def change
    create_table :situations do |t|
      t.string :name
      t.string :slug
      t.text :description, null: true, default: nil
      t.boolean :active, default: false

      t.timestamps
    end
    add_index :situations, :name, unique: true
    add_index :situations, :slug, unique: true
  end
end
