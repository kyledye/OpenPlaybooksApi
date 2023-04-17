# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SituationSport, type: :model do
  it { should belong_to(:sport) }
  it { should belong_to(:situation) }
end
