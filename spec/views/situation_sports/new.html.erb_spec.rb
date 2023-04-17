# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situation_sports/new', type: :view do
  before(:each) do
    assign(:situation_sport, SituationSport.new(
                               situation: nil,
                               sport: nil
                             ))
  end

  it 'renders new situation_sport form' do
    render

    assert_select 'form[action=?][method=?]', situation_sports_path, 'post' do
      assert_select 'input[name=?]', 'situation_sport[situation_id]'

      assert_select 'input[name=?]', 'situation_sport[sport_id]'
    end
  end
end
