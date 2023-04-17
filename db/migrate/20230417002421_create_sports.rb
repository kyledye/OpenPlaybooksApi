# frozen_string_literal: true

class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :slug
      t.text :description, null: true, default: nil
      t.boolean :active, default: false

      t.timestamps
    end
    add_index :sports, :name, unique: true
    add_index :sports, :slug, unique: true
  end
end
