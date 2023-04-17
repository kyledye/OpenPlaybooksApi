# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Situation, type: :model do
  it { have_many(:situation_sports) }
  it { have_many(:sports).through(:situation_sports) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }
end
