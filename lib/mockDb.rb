module MockDb
    def self.student 
        return {
            "education_level" => "University",
            "description" => "A student ready to learn",
            "subjects_of_interest" => [
                {"subject" => "Mathematics", "competency" => "1"},
                {"subject" => "Chemistry", "competency" => "2"},
                {"subject" => "Finance" , "competency" => "3"}
            ],
            "student_id" => "3"
        }
    end

    def self.booking
        return {
            "id" => "29",
            "date" => "2019-12-09 14:30:00",
            "location" => "{\"longitude\"=>\"-6.24315339120024\", \"latitude\"=>\"53...\"}",
            "user_id" => "9",
            "user_booked" => "13",
            "hours_booked" => "2"
        }
    end

    def self.tutor 
        return {
            "headline" => "I am a tutor",
            "description" => "i am a professional Javascript instructor",
            "years_teaching" => "3",
            "teaching_style" => "Fast",
            "work_experience" => [
                {
                    "company" => "Apple",
                    "location" => "California",
                    "title" => "Product Designer",
                    "from" => "Tue, 05 Nov 2015",
                    "to" => "Wed, 10 Sept 2017"
                }                  
            ],
            "education" => [
                {
                    "school" => "National College of Ireland",
                    "degree" => "MSc Cloud Computing",
                    "graduated" => "Fri, 12 Nov 2014"
                }
                
            ],
            "subjects" => [
                "Javascript",
                "Computing",
                "Cloud Computing"
            ],
            "user_id" => "13",
            "dates_booked" => [
                {"date"=>"Tue, 03 Dec 2019 19:00:00 +0000", "booked_by"=>9}, 
                {"date"=>"Wed, 04 Dec 2019 19:00:00 +0000", "booked_by"=>9}, 
                {"date"=>"Fri, 06 Dec 2019 12:15:00 +0000", "booked_by"=>9}, 
                {"date"=>"Sat, 07 Dec 2019 09:30:00 +0000", "booked_by"=>9}, 
                {"date"=>"Sun, 08 Dec 2019 13:30:00 +0000", "booked_by"=>9}, 
                {"date"=>"Mon, 09 Dec 2019 16:30:00 +0000", "booked_by"=>9}
            ]
        }
    end
    
end