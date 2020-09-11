class Reservation < ApplicationRecord
    validates :name, {presence: true}
    validates :date, {presence: true}
    validates :visit_time, {presence: true}
    validates :required_time, {presence: true}
    validates :menu, {presence: true}
    validates :user_id, {presence: true}

end
