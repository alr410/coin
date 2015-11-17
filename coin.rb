# encoding: utf-8
# (с) 2015 goodprogrammer.ru

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Сгенерим случайное число от 0 до 10 тем же методом rand
if (rand(11) == 10)
  # Если случилось чудо и из 11 вариантов (0,1,2,3,4,5,6,7,8,9,10) выпал наибольший...
  puts "Ребро"
else
  # Если чуда не произошло, снова выбираем один из двух вариантов
  if (rand(2) == 1)
    puts "Решка"
  else
    puts "Орел"
  end
end
