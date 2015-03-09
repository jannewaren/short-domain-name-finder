class Name
  attr_accessor :text
  attr_accessor :points

  def initialize(text)
    @text = text
    @points = 0.0
    check_for_fi
    check_length
    check_for_same_chars
    puts 'DEGUB - Initialising a new Name object..'
    puts 'DEBUG - @text: ' + @text.to_s
    puts 'DEBUG - @points: ' + @points.to_s
  end

  def check_for_fi
    counter = 0.0
    counter = counter + 0.1 if @text.include?('f')
    counter = counter + 0.1 if @text.include?('i')
    @points = @points + counter
  end

  def check_length
    @points = @points + 3 if @text.length == 2
    @points = @points + 2 if @text.length == 3
    @points = @points + 1 if @text.length == 4
  end

  def check_for_same_chars
    chars = []
    counter = 0.0
    @text.split('').each do |c|
      counter = counter + 0.1 if chars.include?(c.to_s)
      chars << c.to_s
    end
    @points = @points + counter
  end
end
