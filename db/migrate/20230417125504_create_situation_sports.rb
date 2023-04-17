# frozen_string_literal: true

class CreateSituationSports < ActiveRecord::Migration[7.0]
  def change
    create_table :situation_sports do |t|
      t.references :situation, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
