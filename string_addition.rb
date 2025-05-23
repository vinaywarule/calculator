class StringAddition
    def self.add(string_input)
        return 0 if string_input.empty?

        number_delimiter = /,|\n/
        if string_input.start_with?('//')
            other_delimiter_details, string_input = string_input.split("\n", 2)
            number_delimiter = Regexp.escape(other_delimiter_details[2])
        end
        negative_numbers = string_input.split(number_delimiter).select { |n| n.to_i.negative? }
        raise "negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?
        string_input.split(number_delimiter).map(&:to_i).sum
    end
end