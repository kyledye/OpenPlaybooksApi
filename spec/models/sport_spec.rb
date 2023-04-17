# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Sport, type: :model do
  it { should have_many(:side_sports) }
  it { should have_many(:situation_sports) }
  it { should have_many(:formation_sports) }
  it { should have_many(:sides).through(:side_sports) }
  it { should have_many(:situations).through(:situation_sports) }
  it { should have_many(:formations).through(:formation_sports) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }
end
