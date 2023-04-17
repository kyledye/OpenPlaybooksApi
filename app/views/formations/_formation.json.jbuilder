# frozen_string_literal: true

json.extract! formation, :id, :name, :slug, :description, :active, :created_at, :updated_at
json.url formation_url(formation, format: :json)
