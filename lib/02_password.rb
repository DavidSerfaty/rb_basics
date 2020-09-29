def signup
  puts "Bonjour Utilisateur, définis un mot de passe :"
  print ">>>"
  password = gets.chomp
  return password
end

def login
  puts "Entrez votre mot de passe"
  password = gets.chomp
  return password
end

def welcome_screen
  puts "Merci, vous pouvez acceder aux informations top secrêtes"
end

def perform
  password_signup = signup
  password_login = login
  while password_signup != password_login
    password_login = login
  end
  welcome_screen
end

perform
