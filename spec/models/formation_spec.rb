# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Formation, type: :model do
  it { should have_many(:formation_sports) }
  it { should have_many(:sports).through(:formation_sports) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }
end
