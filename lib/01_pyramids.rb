def half_pyramid
  puts "Combien d'étages dans votre pyramide ?"
  print ">>>"
  stage = gets.chomp.to_i

  for i in 1..stage do
    x = "#" * i
    y = " " * (stage-i)
    puts y+x
    i += 1
  end
end


def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print ">>>"
  stage = gets.chomp.to_i

  for i in 1..stage do
    x = "#" * i
    z = "#" * (i-1)
    puts (x+z).center((stage*2)-1)
    i += 1
  end
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  print ">>>"
  stage = 0
  while stage.even? ==true
    stage = gets.chomp.to_i
    if stage.odd? == true
      stage.times do |i|
        x = "#" * i
        z = "#" * (i+1)
        puts (x+z).center((stage*2)-1)
        i += 1
      end
      for i in 2..stage do
        x = "#" * (stage-i)
        z = "#" * (stage+1-i)
        puts (x+z).center((stage*2)-1)
        i += 1
      end
    else
    puts "Dommage tu as mis un nombre impaire"
    end
  end
end
half_pyramid
full_pyramid
wtf_pyramid
