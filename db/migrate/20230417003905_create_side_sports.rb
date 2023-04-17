# frozen_string_literal: true

class CreateSideSports < ActiveRecord::Migration[7.0]
  def change
    create_table :side_sports do |t|
      t.references :side, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
