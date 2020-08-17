class Reservation < ApplicationRecord
    validates :date, {presence: true}
    validates :s_time, {presence: true}
    validates :f_time, {presence: true}
    validates :name, {presence: true}
    validates :menu, {presence: true}
    validates :user_id, {presence: true}
end
