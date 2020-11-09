class School
    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        # if roster.has_key?(grade)
        #     roster[grade] << name
            
        # else
        #     roster[grade] = [name]
        # end

        roster[grade] ||= []
        roster[grade] << name

    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        roster.each do |key, value|
            value.sort!
        end
        roster.sort.to_h
    end
end