def roll_dice
  return rand(1..6)
end

def analyze_dice(dice)
  if dice >= 5
    puts "Bravo, tu as monté de +1 étage"
    return 1
  elsif dice == 1
    puts "Désolé, tu as perdu -1 étage"
    return -1
  else
    puts "Retentes ta chance"
    return 0
  end
end

def show_state(num)
  puts "Tu es à l'étage n° #{num}"
end

def is_over?(num)
  if num == 10
    return true
  else
    return false
  end
end

def play
  puts "Bienvenue dans le jeu"

  step = 1
  show_state(step)

  while !is_over?(step)
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step = step + analyze_dice(roll_dice)
    show_state(step)
  end

  puts "=== Vous avez gagné ==="

end

play
