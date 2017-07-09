# given a degree (f), return the sample speed rate
# useful for pitching up and down samples
define :degree2rate do |n|
  2 ** (n/12)
end