class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  attr_accessor :total_provision_expenses, :total_km, :total_cost, :start_time,   :end_time ,:km_pricing, :expenses_24h_away, :expenses_arrival_departure_overnighter, :expenses_8h_away_without_overnighter, :hours_between, :total_km_cost;
end
