class Raindrops
  def self.convert num
    st = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }.map{ |n, w|
      w if num % n == 0
    }.join

    st.empty? ? num.to_s : st
  end

end

class BookKeeping
  VERSION = 3
end
