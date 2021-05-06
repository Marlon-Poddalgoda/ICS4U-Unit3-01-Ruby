#!/usr/bin/env ruby

##
# This program reverses an inputted string using recursion
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-06
# frozen_string_literal: true

def reverse(userString)
    # uses recursion to reverse a string

    length = userString.length

    # check if string is empty
    if length == 0
        # return string
        return userString
    else
        # reverse string
        reverse(userString[1, length]) + userString[0]
    end
end

# Asks user for input
print 'Enter a string: '

# Gets the user input
userInput = gets.chomp

# call function
reversedString = reverse(userInput)

puts
puts "The original string is : #{userInput}"
puts "The reversed string is : #{reversedString}"
puts
puts "Done."