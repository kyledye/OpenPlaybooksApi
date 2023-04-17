# frozen_string_literal: true

json.array! @sports, partial: 'sports/sport', as: :sport
