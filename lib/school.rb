# code here!

class School
    def initialize(name)
        @name = name
        @roster= {}
        @grade = 0
    end

    attr_accessor :name 

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end
    
    def grade(num)
        @roster[num]
    end

    def sort
        # sorted_hash = {}
        @roster.map { |grade, name_array| [grade, name_array.sort] }.to_h
        # sorted_hash
    end

    def roster
        @roster
    end

end