users = [
  {username:"mashrur", password:"password1"},
  {username:"jack", password:"password2"},
  {username:"arya", password:"password3"},
  {username:"jonsnow", password:"password4"},
  {username:"heisenberg", password:"password5"}
]

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 0

while attempts < 3

print "Username: " 
username = gets.chomp

print "Password: "
password = gets.chomp

pass_id = password.slice(-1).to_i

  if password == users[pass_id - 1][:password]

    puts users[pass_id - 1]
  
  else
    attempts += 1
  puts  "You have #{3 - attempts} attempts left"
  
end

end 