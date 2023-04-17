# frozen_string_literal: true

class Situation < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :situation_sports
  has_many :sports, through: :situation_sports

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
