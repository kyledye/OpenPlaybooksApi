# frozen_string_literal: true

class SideSport < ApplicationRecord
  belongs_to :side
  belongs_to :sport
end
