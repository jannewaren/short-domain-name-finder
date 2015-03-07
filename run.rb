require_relative 'domain'

TLD = 'fi'

names = ['jkw','jidfijdffd','jannewaren','kehasahko','hekasaaaahko']
domains = []
free = []
taken = []

names.each do |n|
  domains << Domain.new(n.to_s, TLD)
end

domains.each do |d|
  if d.available?
    free << d
  else
    taken << d
  end
end

puts 'Results: '
puts 'Free domains: ' + free.size.to_s
puts 'Taken domains: ' + taken.size.to_s
