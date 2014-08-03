# Determine whether a given IP address is a private address
#  as defined by RFC1918

class IsPrivate

  def initialize
#  Three private ranges, start and end
#  10.0.0.0/8 (10.0.0.0-10.255.255.255)
    @@range_start0 = IsPrivate.tointeger('10.0.0.1')
    @@range_end0 = IsPrivate.tointeger('10.255.255.254')
#  172.16.0.0/12 (172.16.0.0-172.31.255.255)
    @@range_start1 = IsPrivate.tointeger('172.16.0.1')
    @@range_end1  = IsPrivate.tointeger('172.31.255.254')
#  192.168.0.0/16 (192.168.0.0-192.168.255.255)
    @@range_start2 = IsPrivate.tointeger('192.168.0.1')
    @@range_end2 = IsPrivate.tointeger('192.168.255.254')
  end

  def self.tointeger(address)
    octets = address.split('.').map {|c| c.to_i}
    return octets[3] + 256 * (octets[2] +256 *(octets[1] + 256 * octets[0]))
  end

  def isprivate(address)
    number = IsPrivate.tointeger(address)
    if (number > @@range_start0 && number < @@range_end0)
      return true
    elsif (number > @@range_start1 && number < @@range_end1)
      return true
    elsif (number > @@range_start2 && number < @@range_end2)
      return true
    else
      return false
    end
  end

end

