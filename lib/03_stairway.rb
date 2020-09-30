def dice
  random_number=rand(1..6)
  puts "Vous avez pioché le numéro #{random_number}"
  return random_number
end

def mario_game(random_number, mario_position)
  if random_number == 1
    mario_position -= 1
    puts "Désolé, tu as perdu -1 étage"
  elsif random_number == 5 || random_number == 6
    mario_position += 1
    puts "Bravo, tu as monté de +1 étage"
  else
    puts "Retentes ta chance"
  end
  puts "Tu es à l'étage : #{mario_position}"
  return mario_position
end

def perform
  puts "Bienvenu sur le jeu de l'oie de super Mario, appuies sur Y pour commencer ton tour"
  play = gets.chomp
  mario_position = 0
  random_number = dice
  mario_game(random_number, mario_position)

  mario_position = mario_game(random_number, mario_position)
  while mario_position < 10 || play == "Y"
    puts "On commence un nouveau tour ? (Y/N)"
    play = gets.chomp
    random_number = dice
    mario_game(random_number, mario_position)
  end
  puts "Bravo tu as gagné"
end

perform
