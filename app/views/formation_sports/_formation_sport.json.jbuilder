# frozen_string_literal: true

json.extract! formation_sport, :id, :formation_id, :sport_id, :created_at, :updated_at
json.url formation_sport_url(formation_sport, format: :json)
