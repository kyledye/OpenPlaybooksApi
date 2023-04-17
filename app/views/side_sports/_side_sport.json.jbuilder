# frozen_string_literal: true

json.extract! side_sport, :id, :side_id, :sport_id, :created_at, :updated_at
json.url side_sport_url(side_sport, format: :json)
