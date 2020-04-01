[10, 20, 30, 40].map{|num| num * 2}

[10, 20, 30, 40].reduce(0){|total, num| total + num}
[10, 20, 30, 40].reduce(100){|total, num| total + num}

[10, 20, 30, 40].select{ |num| num > 25}

[10, 20, 30, 40].reject{ |num| num > 25}

### all?: Everything "tested" by the block returns truthy
%w[ant bear cat].all? {|word| word.length >= 3}        #=> true
["ant", "bear", "cat"].all?{|word| word.length >= 4    #=> false
%w[ant bear cat].all?(/t/)                             #=> false
%w[ttt t tt].all?(/t/)                                 #=> true
[1, 2i, 3.14].all?(Numeric)                            #=> true
[nil, true, 99].all?                                   #=> false
[1, 2, 3].all?                                         #=> true
["a", "b", "c"].all?                                   #=> true
[].all?                                                #=> true

### any?: Did anything "tested" by the block returns truthy
%w[ant bear cat].any? {|word| word.length >= 3}       #=> true
["ant", "bear", "cat"].any?{|word| word.length >= 4}  #=> true
%w[ant bear cat].any?(/t/)                            #=> true
%w[ant bear cat].any?(/d/)                            #=> false
[1, 2i, 3.14].any?(Numeric)                           #=> true
[nil, true, 99].any?                                  #=> true
[1, 2, 3].any?                                        #=> true
["a", "b", "c"].any?                                  #=> true
[].any?                                               #=> false

### collect: Does the same thing as map
(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
(1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
# collect_concat { |obj| block } → array
# collect_concat → an_enumerator
# Returns a new array with the concatenated results of running block once for every element in enum.

# If no block is given, an enumerator is returned instead.
[1, 2, 3, 4].flat_map { |e| [e, -e] } #=> [1, -1, 2, -2, 3, -3, 4, -4]
[[1, 2], [3, 4]].flat_map { |e| e + [100] } #=> [1, 2, 100, 3, 4, 100]

### count: Which elements satisfy the block or, without block, how many elements are there?
ary = [1, 2, 4, 2]
ary.count               #=> 4
ary.count(2)            #=> 2
ary.count{ |x| x%2==0 } #=> 3

### find: Which element satisfies the block first. Does the same thing as detect.
(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..10).find     { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).detect  { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35

### find_all: Which elements satisfy the block? Does the same thing as select.
(1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]
[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
[:foo, :bar].filter { |x| x == :foo }   #=> [:foo]

### find_index: What is the index of the first element to satisfy the block?
(1..10).find_index  { |i| i % 5 == 0 and i % 7 == 0 }  #=> nil
(1..100).find_index { |i| i % 5 == 0 and i % 7 == 0 }  #=> 34
(1..100).find_index(50)                                #=> 49

### max: What's the highest value?
a = %w(albatross dog horse)
a.max                                   #=> "horse"
a.max { |a, b| a.length <=> b.length }  #=> "albatross"
a.max(2)                                  #=> ["horse", "dog"]
a.max(2) {|a, b| a.length <=> b.length }  #=> ["albatross", "horse"]
[5, 1, 3, 4, 2].max(3)                    #=> [5, 4, 3]

### max_by: What's the highest value based on some property of the element?
a = %w(albatross dog horse)
a.max_by { |x| x.length }   #=> "albatross"
a.max_by(2) {|x| x.length } #=> ["albatross", "horse"]

### min: What's the lowest value?
a = %w(albatross dog horse)
a.min                                   #=> "albatross"
a.min { |a, b| a.length <=> b.length }  #=> "dog"
a.min(2)                                  #=> ["albatross", "dog"]
a.min(2) {|a, b| a.length <=> b.length }  #=> ["dog", "horse"]
[5, 1, 3, 4, 2].min(3)                    #=> [1, 2, 3]
a.min_by { |x| x.length }   #=> "dog"
p a.min_by(2) {|x| x.length } #=> ["dog", "horse"]

a.minmax                                  #=> ["albatross", "horse"]
a.minmax { |a, b| a.length <=> b.length } #=> ["dog", "albatross"]
a.minmax_by { |x| x.length }   #=> ["dog", "albatross"]

### sort: Put the values in order
%w(rhea kea flea).sort           #=> ["flea", "kea", "rhea"]
(1..10).sort { |a, b| b <=> a }  #=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
%w{apple pear fig}.sort_by { |word| word.length }  #=> ["fig", "pear", "apple"]

files = Dir["*"]
sorted = files.sort { |a, b| File.new(a).mtime <=> File.new(b).mtime }
sorted   #=> ["mon", "tues", "wed", "thurs"]

files = Dir["*"]
sorted = files.sort { |a, b|
  test(?M, a) <=> test(?M, b)
}
sorted   #=> ["mon", "tues", "wed", "thurs"]

sorted = Dir["*"].collect { |f|
   [test(?M, f), f]
}.sort.collect { |f| f[1] }
sorted   #=> ["mon", "tues", "wed", "thurs"]

sorted = Dir["*"].sort_by { |f| test(?M, f) }
sorted   #=> ["mon", "tues", "wed", "thurs"]