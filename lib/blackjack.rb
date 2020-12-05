def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1...11
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  hand_sum = card_one + card_two
  display_card_total(hand_sum)
  hand_sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  player_choice = get_user_input
  if player_choice == 'h'
    new_card = deal_card
    new_total = card_total + new_card
  elsif player_choice == 's'
    card_total
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand_total = initial_round
  until hand_total > 21
    hand_total = hit?(hand_total)
    display_card_total(hand_total)
  end
  puts "Sorry, you hit #{hand_total}. Thanks for playing!"
end
