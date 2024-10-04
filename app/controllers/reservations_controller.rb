class ReservationsController < ApplicationController
  # before_action :set_reservation , only: [:show, :edit, :update, :cancel]
  def index
  end

  def show
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @tables = Table.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.status = "Pending"
    @reservation.guest_name
    @reservation.guest_phone
    @reservation.reservation_time
    if @reservation.save
      redirect_to new_reservations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def cancel
  end

  def reservation_params
    params.require(:reservation).permit(:guest_name, :table_id, :guest_phone, :reservation_time, :status)
  end
  private

  # def set_reservation
  #   @reservation = Reservation.find(params[:id])
  # end
end
