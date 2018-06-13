class Outpost < ApplicationRecord
    belongs_to :user, required: false
end
