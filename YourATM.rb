VALUES = { "YOUR_CURRENCY" => [5, 10, 20, 50, 100, 200, 500] }

def atm(value)
@currency = value.match(/[a-zA-Z]{3}/).to_s.upcase
@allowed_currencies = ["RUB", "EUR", "UAH", "USD", "CUP", "SOS"]
requested = value.match(/\d{1,4}/).to_s.to_i
check = requested.to_s.chars.map(&:to_i).last

if check % VALUES.values.flatten[0] != 0
  puts "Can't do #{check} #{@currency}. Value must be divisible by #{VALUES.values.flatten[0]}!"
  exit()
elsif check % VALUES.values.flatten[0] == 0
count = -1
@array = []
new = requested
while new > 0 do
if new >= VALUES.values.flatten[count] && (new - VALUES.values.flatten[count]) >= VALUES.values.flatten[count]
  new = new - VALUES.values.flatten[count] - VALUES.values.flatten[count]
  @array << VALUES.values.flatten[count] << VALUES.values.flatten[count]
elsif new > VALUES.values.flatten[count]
  new = new - VALUES.values.flatten[count]
  @array << VALUES.values.flatten[count]
  count -= 1
elsif new < VALUES.values.flatten[count] && new > VALUES.values.flatten[count-1]
  new = new - VALUES.values.flatten[count-1]
  @array << VALUES.values.flatten[count-1]
  count -= 1
elsif new < VALUES.values.flatten[count]
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

atm("USD 1035")