require_relative "mockDb"
require_relative "IsBooked"


module TestCases
    def self.check_has_student
        self.init_isbooked
        return @isBooked.get_student
    end

    def self.check_is_student_hash
        self.init_isbooked
        return @isBooked.get_student.class
    end

    def self.check_has_booking
        self.init_isbooked
        return @isBooked.get_booking
    end

    def self.check_is_booking_hash
        self.init_isbooked
        return @isBooked.get_booking.class
    end

    def self.check_has_tutor
        self.init_isbooked
        return @isBooked.get_tutor
    end

    def self.check_is_tutor_hash
        self.init_isbooked
        return @isBooked.get_tutor.class
    end

    def self.check_if_tutor_has_dates_booked
        self.init_isbooked
        dates_booked = @isBooked.get_tutor["dates_booked"]
        return dates_booked
    end

    def self.check_if_dates_booked_is_array
        self.init_isbooked
        dates_booked = @isBooked.get_tutor["dates_booked"]
        return dates_booked.class
    end

    def self.check_if_dates_booked_is_set
        self.init_isbooked
        return @isBooked.get_dates_booked
    end

    def self.check_if_dates_booked_has_date_value
        self.init_isbooked
        return @isBooked.get_dates_booked[0].keys[0]
    end

    def self.check_if_booked
        self.init_isbooked
        return @isBooked.checkIfBooked
    end
    

    def self.init_isbooked
        @isBooked = IsBooked.new(MockDb.student, MockDb.tutor, MockDb.booking)
    end
end

#puts TestCases.check_if_dates_booked_is_set
@isBooked = IsBooked.new(MockDb.student, MockDb.tutor, MockDb.booking)
booking = @isBooked.checkIfBooked
puts booking