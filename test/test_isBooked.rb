require 'minitest/autorun'
require 'IsBooked'
require 'app'

class TestIsBooked < Minitest::Test
    def test_has_student
        assert_equal(true, TestCases.check_has_student != nil)
    end

    def test_student_content_is_hash
        assert_equal(true, TestCases.check_is_student_hash == Hash)
    end

    def test_has_booking
        assert_equal(true, TestCases.check_has_booking != nil)
    end

    def test_booking_content_is_hash
        assert_equal(true, TestCases.check_is_booking_hash == Hash)
    end

    def test_has_tutor
        assert_equal(true, TestCases.check_has_tutor != nil)
    end

    def test_tutor_content_is_hash
        assert_equal(true, TestCases.check_is_tutor_hash == Hash)
    end

    def test_if_tutor_has_dates_booked
        assert_equal(true, TestCases.check_if_tutor_has_dates_booked != nil)
    end

    def test_if_dates_booked_is_array
        assert_equal(true, TestCases.check_if_dates_booked_is_array == Array)
    end

    def test_if_dates_booked_is_set
        assert_equal(true, TestCases.check_if_dates_booked_is_set != nil)
    end

    def test_if_dates_booked_has_date_value
        assert_equal("date", TestCases.check_if_dates_booked_has_date_value)
    end

    def test_if_booked
        assert_equal(true, TestCases.check_if_booked)
    end
    

end