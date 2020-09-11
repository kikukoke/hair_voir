class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  def set_reservation_info
    @visit_times = [["◯◯:◯◯", nil], "9:00", "9:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00", "18:30", "19:00", "19:30", "20:00", "20:30", "21:00"]
    @required_times = [["◯分", nil], "30分", "1時間", "1時間30分", "2時間", "2時間30分", "3時間"]
    @new = true
  end

  def set_dates(date)
    @dates = []
    i = 0
    while i < 4 do
      @dates.push(date + i)
      i += 1
    end
  end 
end
