# frozen_string_literal: true

json.extract! sport, :id, :name, :slug, :description, :active, :created_at, :updated_at
json.url sport_url(sport, format: :json)
