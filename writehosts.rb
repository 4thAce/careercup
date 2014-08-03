# Given a mysql database with a table called machines and columns
# host public_ip private_ip
# generate a hosts file with the public ips associated with hostnames
# host_pub and the private ips associated with the hostnames

class WriteHosts

  def writehosts
# Connect to the db and retrieve the information from the table
    lines = `mysql -u root -p password -f 'SELECT host, public_ip, private_ip FROM machines`
    fout = File.open('/etc/hosts/','w')
# Loop over lines
    lines.split("\n").each do |line|
      (hostname, pub, priv) = line.split(' ')
# Skip the header
      next if /host/.match(hostname)
      next if /----/.match(hostname)
# Write non-null private ip
      fout.write("%s\t%s" % [hostname, private_ip]) unless private_ip.eq('NULL')
# write non_null public ip
      fout.write("%s_pub\t%s" % [hostname, public_ip]) unless public_ip.eq('NULL')
    end  #Loop over lines
    fout.close
  end
end

w = WriteHosts.new
w.writehosts
