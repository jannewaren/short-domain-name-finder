require 'open3'

class Domain
  attr_accessor :name
  attr_accessor :tld
  attr_accessor :points

  def initialize(name, tld)
    @name = name
    @tld = tld
    @points = 0.0
    puts 'DEGUB - Initialising a new Domain object..'
    puts 'DEGUB - @name: ' + @name.to_s
    puts 'DEGUB - @tld: ' + @tld.to_s
    puts 'DEGUB - @points: ' + @points.to_s
  end

  def to_fqdn
    return @name+'.'+@tld
  end

  def available?
    puts "Checking #{self.to_fqdn}"
    stdin, stdout, stderr = Open3.popen3('whois', self.to_fqdn)
    output = stdout.gets(nil)
    if output.include?('status:')
      return false
    elsif output.include?('Domain not found')
      return true
    else
      return true
    end
  end
end
