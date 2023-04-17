# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'side_sports/new', type: :view do
  before(:each) do
    assign(:side_sport, SideSport.new(
                          side: nil,
                          sport: nil
                        ))
  end

  it 'renders new side_sport form' do
    render

    assert_select 'form[action=?][method=?]', side_sports_path, 'post' do
      assert_select 'input[name=?]', 'side_sport[side_id]'

      assert_select 'input[name=?]', 'side_sport[sport_id]'
    end
  end
end
