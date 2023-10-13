#!/usr/bin/env ruby

# Guess the number game

def guess_the_number(number)
    loop do
        puts ""
        puts "=================="
        puts "GUESS THE NUMBER (1-100)"
        puts "=================="
        puts ""
        print "ENTER NUMBER:> "
        input = gets.chomp.to_i
        puts ""
        if input > number
            puts "LOWER!"
            false
        elsif input < number
            puts "HIGHER!"
            true
        elsif input == number
            puts "WINNER!"
            return true
        elsif input == 0
            exit
        else
            puts "WRONG INPUT!"
        end
    end
end

def main ()
    secret_number = rand(1..100)
    guess_the_number(secret_number)
end

main
