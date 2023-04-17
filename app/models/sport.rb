# frozen_string_literal: true

class Sport < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :side_sports
  has_many :sides, through: :side_sports
  has_many :situation_sports
  has_many :formation_sports
  has_many :situations, through: :situation_sports
  has_many :formations, through: :formation_sports

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
