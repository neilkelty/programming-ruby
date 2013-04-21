h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
h.length # => 3
h['dog'] # => "canine"
h['cow'] = 'bovine'
h[12] = 'dodecine'
h['cat'] = 99
h        # => { 'dog' => 'canine', 'cat' => 99, 'donkey' => 'asinine', 'cow' => 'bovine', 12 => 'dodecine' }

h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
# same as...
h = { :dog => 'canine', :cat => 'feline', :donkey => 'asinine' }

# Compared with arrays, hashes have one significant advantage: they can use any object as an index.