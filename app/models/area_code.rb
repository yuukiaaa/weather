class AreaCode < ApplicationRecord
    belongs_to :pref_code, foreign_key: "pref_id"
end
