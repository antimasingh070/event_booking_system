class SendBookingConfirmationJob < ApplicationJob
  queue_as :default

  def perform(booking_id)
    booking = Booking.find(booking_id)
    puts "Sending email confirmation for Booking ID: #{booking.id}"
  end
end
