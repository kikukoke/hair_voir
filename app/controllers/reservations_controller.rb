class ReservationsController < ApplicationController


  def top
    @reservation = Reservation.new(date: params[:day].to_date)
    set_reservation_info
    set_dates(params[:day].to_date)
    @reservations_one = Reservation.where(date: @dates[0])
  end

  def create
    @reservation = Reservation.new(name: params[:reservation][:name],
                                   menu: params[:reservation][:menu],
                                   date: params[:reservation][:date],
                                   visit_time: params[:reservation][:visit_time],
                                   required_time: params[:reservation][:required_time],
                                   memo: params[:reservation][:memo],
                                   user_id: 1)
    if @reservation.save
      flash[:notice] = "予約を追加しました"
      redirect_to(reservations_top_path(@reservation.date))
    else
      set_dates(@reservation.date)
      set_reservation_info 
      render("reservations/top")                          
    end
  end

  def edit
    @reservation = Reservation.find_by(id: params[:id])
    set_dates(@reservation.date)
    set_reservation_info 
    @new = false
    render("reservations/top")
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.name = params[:reservation][:name]
    @reservation.menu = params[:reservation][:menu]
    @reservation.date = params[:reservation][:date]
    @reservation.visit_time = params[:reservation][:visit_time]
    @reservation.required_time = params[:reservation][:required_time]
    @reservation.memo = params[:reservation][:memo]
    if @reservation.save
      flash[:notice] = "予約を変更しました"
      redirect_to(reservations_top_path(@reservation.date))
    else
      set_dates(@reservation.date)
      set_reservation_info 
      @new = false
      render("reservations/top")                          
    end    
  end
 
  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    flash[:notice] = "予約を削除しました"
    redirect_to(reservations_top_path(@reservation.date))
  end

  def change_date
    set_dates(Date.today + params[:difference].to_i + params[:way].to_i)
    @reservation = Reservation.new(date: @dates[0])
    set_reservation_info
    render("reservations/top")
  end




  
end
