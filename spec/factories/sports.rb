# frozen_string_literal: true

FactoryBot.define do
  factory :sport do
    name { 'MyString' }
    slug { 'MyString' }
    description { 'MyText' }
    active { false }
  end
end
