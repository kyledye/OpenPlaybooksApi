# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'side_sports/edit', type: :view do
  let(:side_sport) do
    SideSport.create!(
      side: nil,
      sport: nil
    )
  end

  before(:each) do
    assign(:side_sport, side_sport)
  end

  it 'renders the edit side_sport form' do
    render

    assert_select 'form[action=?][method=?]', side_sport_path(side_sport), 'post' do
      assert_select 'input[name=?]', 'side_sport[side_id]'

      assert_select 'input[name=?]', 'side_sport[sport_id]'
    end
  end
end
