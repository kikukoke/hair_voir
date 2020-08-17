class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @reservations = Reservation.where(user_id: 1)
    select_reservation_times

  end

  def create
    @reservation = Reservation.new(name: params[:reservation][:name],
                                   menu: params[:reservation][:menu],
                                   date: params[:reservation][:date],
                                   s_time: params[:reservation][:s_time],
                                   f_time: params[:reservation][:f_time],
                                   memo: params[:reservation][:memo],
                                   user_id: 1)
    if @reservation.save
      flash[:notice] = "予約を登録しました"
      redirect_to(reservations_new_path)     
    else
      select_reservation_times
      @reservations = Reservation.where(user_id: 1)
      render("reservations/new")                          
    end
  end

  
end
