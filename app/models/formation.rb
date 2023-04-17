# frozen_string_literal: true

class Formation < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :formation_sports
  has_many :sports, through: :formation_sports

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
