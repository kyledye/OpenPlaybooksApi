# frozen_string_literal: true

json.extract! side, :id, :name, :slug, :description, :active, :created_at, :updated_at
json.url side_url(side, format: :json)
