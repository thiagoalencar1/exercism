=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
  attr_accessor :hour, :minute

  def initialize(hour:, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    big_hours_check
    "#{@hour.to_s.rjust(2,'0')}:#{@minute.to_s.rjust(2,'0')}"
  end

  def big_hours_check = (@hour -= 24 while @hour >= 24)
end
