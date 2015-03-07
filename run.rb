require_relative 'domain'
require_relative 'name'

TLD = 'fi'
CHARACTERS = %w(a i t n e s l o k u m v r j h y p d g b f c w q)

names = []
domains = []
free = []
taken = []

CHARACTERS.repeated_combination(3).to_a.each do |c|
  names << Name.new(c.join)
end

CHARACTERS.repeated_combination(4).to_a.each do |c|
  names << Name.new(c.join)
end

names.sort { |a,b| b.points <=> a.points }.each do |n|
  domains << Domain.new(n.text.to_s, TLD)
end

domains.each do |d|
  if free.length < 5 and d.available?
    free << d
  else
    taken << d
  end
end

puts 'Results: '
puts 'Free domains: ' + free.size.to_s
puts 'Taken domains: ' + taken.size.to_s
