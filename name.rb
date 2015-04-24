class Name
  attr_accessor :text
  attr_accessor :points

  def initialize(text)
    @text = text
    @points = 0.0
    check_length
    check_for_same_chars
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
