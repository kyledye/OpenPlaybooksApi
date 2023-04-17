# frozen_string_literal: true

json.extract! situation_sport, :id, :situation_id, :sport_id, :created_at, :updated_at
json.url situation_sport_url(situation_sport, format: :json)
