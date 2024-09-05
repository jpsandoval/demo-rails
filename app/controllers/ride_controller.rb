class RideController < ApplicationController
  def index

    d1 = Driver.all.first
    p1 = Passenger.all.first
    r = Ride.new(driver:d1,passenger:p1,pickup_location:"bella vista 234",dropoff_location:"san joaquin",status:"requested",fare:"2000 CLP")
    r.save
    logger.debug "Ride ID: #{r.id}"
    logger.info "Processing the request..."
    logger.fatal "Terminating application, raised unrecoverable error!!!"
    @rides = Ride.all
  end
end
