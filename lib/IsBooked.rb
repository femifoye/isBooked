require_relative 'mockDb'
require 'time'

ENV['TZ'] = 'UTC'

class IsBooked
    def initialize(student, tutor, booking )
        @student = student
        @booking = booking
        @tutor = tutor

    end

    def get_student
        return @student
    end

    def get_booking
        return @booking
    end

    def get_tutor
        return @tutor
    end

    def get_dates_booked
        return @tutor["dates_booked"]
    end

    #check if tutor is booked 
    #check if time booked falls in range of start time and stop time
    #stop_time is calculated by adding 4 hours to start_time booked to represent a lesson block
    #lesson blocks cannot exceed 4 hours
    #if time falls within the slot, push date to bookings_array
    #in addition, if end of session booked falls within a time tutor is booked, return false
    #return true if length of bookings_array >= 1 else return false
    def checkIfBooked
        booking_start_time = Time.parse(get_booking["date"])
        hours_booked = get_booking["hours_booked"].to_i
        booking_stop_time = booking_start_time + (3600 * hours_booked)
        dates_booked = get_tutor["dates_booked"]
        lesson_block = 14400
        bookings_array = []
        dates_booked.each do |date|
            start_time = Time.parse(date["date"])
            stop_time = start_time + lesson_block
            if(booking_start_time >= start_time && booking_start_time <= stop_time)
                bookings_array.push(date)
            elsif(start_time >= booking_start_time && start_time <= booking_stop_time)
                bookings_array.push(date)
            end
            
        end
        if(bookings_array.length >= 1)
            return true
        else
            return false
        end
    end
end