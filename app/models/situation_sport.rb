# frozen_string_literal: true

class SituationSport < ApplicationRecord
  belongs_to :situation
  belongs_to :sport
end
