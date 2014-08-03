# Using only the digits 4 and 7, return the Nth number

class FourSeven

  def self.nth47(nn)
# The numbers follow the pattern of binary counting with the MSB
#  ignored and starting from 2: 0, 1, 00, 01, 11, etc.
    pattern = (nn + 1).to_s(2)[1..-1]
    fourseven = ''
    pattern.split('').each do |bit|
      if bit == '0'
        fourseven = fourseven + '4'
      else
        fourseven = fourseven + '7'
      end
    end
    return fourseven.to_i
  end

end
