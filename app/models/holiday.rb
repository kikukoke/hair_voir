class Holiday < ApplicationRecord
    validates :date, {presence: true}
    validates :user_id, {presence: true}
end
