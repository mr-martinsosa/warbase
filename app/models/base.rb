class Base < ApplicationRecord
    belongs_to :user, required: false
end
