# frozen_string_literal: true

class FormationSport < ApplicationRecord
  belongs_to :formation
  belongs_to :sport
end
