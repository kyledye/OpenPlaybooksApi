# frozen_string_literal: true

json.array! @situations, partial: 'situations/situation', as: :situation
