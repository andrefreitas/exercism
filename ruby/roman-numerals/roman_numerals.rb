require "pry"

class Integer

   def to_roman
    numerals = {
       1 => "I",
       4 => "IV",
       5 => "V",
       10 => "X",
       50 => "L",
       100 => "C",
       500 => "D",
       1000 => "M"
     }

     number = self
     romans = []

     numerals.sort.reverse.each do |factor, roman|

      #TODO: Fix VI test case
      while number > 0 && number % factor == 0
        romans.push roman
        number -= factor
      end
     end
     romans.join
   end
end
