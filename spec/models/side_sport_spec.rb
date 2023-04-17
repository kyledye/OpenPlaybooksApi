# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SideSport, type: :model do
  it { should belong_to(:sport) }
  it { should belong_to(:side) }
end
