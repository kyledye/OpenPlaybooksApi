# frozen_string_literal: true

module ParsedJson
  def json
    JSON.parse(last_response.body)
  end
end

RSpec.configure do |config|
  config.include ParsedJson, type: :request
end
