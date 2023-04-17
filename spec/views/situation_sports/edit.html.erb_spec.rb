# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situation_sports/edit', type: :view do
  let(:situation_sport) do
    SituationSport.create!(
      situation: nil,
      sport: nil
    )
  end

  before(:each) do
    assign(:situation_sport, situation_sport)
  end

  it 'renders the edit situation_sport form' do
    render

    assert_select 'form[action=?][method=?]', situation_sport_path(situation_sport), 'post' do
      assert_select 'input[name=?]', 'situation_sport[situation_id]'

      assert_select 'input[name=?]', 'situation_sport[sport_id]'
    end
  end
end
