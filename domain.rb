require 'open3'

class Domain
  attr_accessor :name
  attr_accessor :tld

  def initialize(name, tld)
    @name = name
    @tld = tld
  end

  def to_fqdn
    return @name+'.'+@tld
  end

  def available?
    stdin, stdout, stderr = Open3.popen3('whois', self.to_fqdn)
    output = stdout.gets(nil)
    if output.include?('status:')
      #puts "Checking #{self.to_fqdn} - already taken"
      return false
    elsif output.include?('Domain not available')
      #puts "Checking #{self.to_fqdn} - not available for registeration"
      return false
    elsif output.include?('Domain not found')
      #puts "Checking #{self.to_fqdn} - available"
      return true
    else
      #puts "Checking #{self.to_fqdn} - check failed"
      return false
    end
  end
end
