# frozen_string_literal: true

json.extract! situation, :id, :name, :slug, :description, :active, :created_at, :updated_at
json.url situation_url(situation, format: :json)
