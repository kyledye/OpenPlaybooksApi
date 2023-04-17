# frozen_string_literal: true

class Side < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :side_sports
  has_many :sports, through: :side_sports

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
