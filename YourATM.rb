puts "Please enter the amount you wish to withdraw followed by currency:"
amount = gets.chomp.to_s


VALUES = { "GBP" => [5, 10, 20, 50] }
# More currencies to be added

def atm(value)
@currency = value.match(/[a-zA-Z]{3}/).to_s.upcase
@allowed_currencies = ["GBP", "EUR", "UAH", "USD", "CUP", "SOS"]
requested = value.match(/\d{1,4}/).to_s.to_i
check = requested.to_s.chars.map(&:to_i).last
val = VALUES.values.flatten

if check % val[0] != 0
  puts "Can't do #{check} #{@currency}. Value must be divisible by #{val[0]}!"
  exit()
elsif check % val[0] == 0
count = -1
@array = []
new = requested
while new > 0 do
if new >= val[count] && (new - val[count]) >= val[count]
  new = new - val[count] - val[count]
  @array << val[count] << val[count]
elsif new > val[count]
  new = new - val[count]
  @array << val[count]
  count -= 1
elsif new < val[count] && new > val[count-1]
  new = new - val[count-1]
  @array << val[count-1]
  count -= 1
elsif new < val[count]
  count -= 1
else
    @array << new
  break
  end
 end
end
array_conversion
end

def array_conversion
hash = @array.inject(Hash.new(0)){ |h, e| h[e] += 1 ; h }
  if @allowed_currencies.include?(@currency) != false
    hash.each {|key, value| print "#{value} * #{key} #{@currency}, "}
  else
    puts "Sorry, have no #{@currency}."
  end
 end

puts "Here's your money: "

atm(amount)