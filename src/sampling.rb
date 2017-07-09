# given a degree (f), return the sample speed rate
# useful for pitching up and down samples diatonically
define :degree2rate do |n|
  2 ** (n.to_f/12)
end

# convert a list of degrees to sample rates
define :degrees2rates do |degrees|
  rates = []
  degrees.each { |x| rates.push(degree2rate(x)) }
  rates.ring
end

# returns a list of rates that represent the 12 notes in a scale
define :sample_degrees do
  degrees = []
  12.times do |i|
    degrees.push(2 ** (i.to_f/12))
  end
  degrees.ring
end