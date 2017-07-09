
live_loop :tablake do
  s = :ambi_glass_hum
  sc = scale(:spanish)
  r = 2.0 ** (sc.shuffle.tick/12.0) * -0.5
  sample s, rate: r
  sample s, rate: r * 2.01
  #sleep sample_duration(s, rate: r)
  sleep 2
end
