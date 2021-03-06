
### Array

```ruby
x = [1,2,3]
x.each { puts }

ary = [1, "two", 3.0] #=> [1, "two", 3.0]
ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]
Array.new(4) { Hash.new } #=> [{}, {}, {}, {}]
empty_table = Array.new(3) { Array.new(3) } #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]

arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]
arr.at(0) #=> 1

arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") #=> "oops"
arr.first #=> 1
arr.last  #=> 6

arr.take(3) #=> [1, 2, 3]
arr.drop(3) #=> [4, 5, 6]


browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
browsers.length #=> 5
browsers.count #=> 5

browsers.empty? #=> false
browsers.include?('Konqueror') #=> false

arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
arr.insert(3, 'orange', 'pear', 'grapefruit') #=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]

arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]
arr.shift #=> 1
arr #=> [2, 3, 4, 5]
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]
arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]

arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, 'bar', 7, 'baz']

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]


arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]

words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each { |word| str += "#{word} " }
p str #=> "sixth fifth fourth third second first "

arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
arr                   #=> [1, 2, 3, 4, 5]
arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
arr                   #=> [1, 4, 9, 16, 25]

arr = [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }     #=> [4, 5, 6]
arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]
arr.drop_while { |a| a < 4 } #=> [4, 5, 6]
arr                          #=> [1, 2, 3, 4, 5, 6]


arr.delete_if { |a| a < 4 } #=> [4, 5, 6]
arr                         #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 } #=> [1, 2, 3]
arr                       #=> [1, 2, 3]


[](*args)


Array.[]( 1, 'a', /^A/ ) # => [1, "a", /^A/]
Array[ 1, 'a', /^A/ ]    # => [1, "a", /^A/]
[ 1, 'a', /^A/ ]         # => [1, "a", /^A/]
new(size=0, default=nil)
new(array)
new(size) {|index| block }
Returns a new array.



first_array = ["Matz", "Guido"]

second_array = Array.new(first_array) #=> ["Matz", "Guido"]

first_array.equal? second_array       #=> false

Array.new(3){ |index| index ** 2 }
# => [0, 1, 4]

a = Array.new(2, Hash.new)
# => [{}, {}]

a[0]['cat'] = 'feline'
a # => [{"cat"=>"feline"}, {"cat"=>"feline"}]

a[1]['cat'] = 'Felix'
a # => [{"cat"=>"Felix"}, {"cat"=>"Felix"}]


a = Array.new(2) { Hash.new }
a[0]['cat'] = 'feline'
a # => [{"cat"=>"feline"}, {}]
try_convert(obj) → array or nil

Array.try_convert([1])   #=> [1]
Array.try_convert("1")   #=> nil

if tmp = Array.try_convert(arg)
  # the argument is an array
elsif tmp = String.try_convert(arg)
  # the argument is a string
end

```
### Hash
Tworzenie hash
```ruby
Hash['a',1,'b',2,'c',3] # {"a"=>1, "b"=>2, "c"=>3}
Hash[[['a',1],['b',2],['c',3]]] #  {"a"=>1, "b"=>2, "c"=>3}
Hash['a'=>1,'b'=>2,'c'=>3] # {"a"=>1, "b"=>2, "c"=>3}
```
Wartość domyślna
```ruby
h = {} # to samo, co h = Hash.new
h.default = 'go'

h = Hash.new('go')

h['a'] = 'ha'

h['c'] # => "go"
h['c'].upcase! # => "GO"
# zmieniona wartosc domyslna
h['d'] # => "GO"

h.keys # => ["a"]

# wartosc domyslna moze zalezec od klucza
h = Hash.new { |hash,key| hash[key] = "+#{key}"}

h['a'] = 'ha'
h.keys # => ["a"]

h['b'] # => "+b"
h.keys # => ["a", "b"]
```
Każdy element
```ruby
h = {"Jack" => "Black", "Simon" => "White", "John" => "Smith"}
h.each {|key,value| puts "#{key} #{value}" }
# Jack Black
# Simon White
# John Smith

h.each_key { |k| puts k }
# Jack
# Simon
# John

h.each_value { |v| puts v }
# Black
# White
# Smith
```
Łączenie
```ruby
h = {"Jack" => "Black", "Simon" => "White", "John" => "Smith"}
h1 = { "Jack" => "Small", "Sarah" => "Black"}
h.merge(h1) # {"Jack"=>"Small", "Simon"=>"White", "John"=>"Smith", "Sarah"=>"Black"}

h.merge!(h1)
h # {"Jack"=>"Small", "Simon"=>"White", "John"=>"Smith", "Sarah"=>"Black"}
```

### Enumerable

Łączenie elementów
```ruby
[1,2,3,4,6,6,8,9,1].chunk { |a| a>=6 }.each {|bool,ary| p "#{bool}-> #{ary}"}
# "false-> [1, 2, 3, 4]"
# "true-> [6, 6, 8, 9]"
# "false-> [1]"
```
Pętle
```ruby
(1..4).cycle(2) { |a| print a.to_s+", " }
# 1, 2, 3, 4, 1, 2, 3, 4,
```
Różne podziały
```ruby
[1,2,1,3,1,5].each_cons(2) { |a| p a }
# [1, 2]
# [2, 1]
# [1, 3]
# [3, 1]
# [1, 5]

[1,2,1,3,1,5].each_slice(2) { |a| p a }
# [1, 2]
# [1, 3]
# [1, 5]

(0..10).group_by { |a| a%4 } # {0=>[0, 4, 8], 1=>[1, 5, 9], 2=>[2, 6, 10], 3=>[3, 7]}

(0..10).partition { |a| a%4==0 } # [[0, 4, 8], [1, 2, 3, 5, 6, 7, 9, 10]]

(5..9).slice_after(6).to_a # [[5, 6], [7, 8, 9]]

(1..20).slice_when { |a,b| (a+b)%3==0 }.to_a
# [[1], [2, 3, 4], [5, 6, 7], [8, 9, 10], [11, 12, 13], [14, 15, 16], [17, 18, 19], [20]]
```

