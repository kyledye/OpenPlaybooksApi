# frozen_string_literal: true

class CreateFormationSports < ActiveRecord::Migration[7.0]
  def change
    create_table :formation_sports do |t|
      t.references :formation, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
