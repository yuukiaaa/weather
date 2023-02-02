class PrefCode < ApplicationRecord
    has_many :area_codes, foreign_key: "pref_id"
end
