class StringAddition
    def self.add(string_input)
        return 0 if string_input.empty?
        string_input.split(/,|\n/).map(&:to_i).sum
    end
end