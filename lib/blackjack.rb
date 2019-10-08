def welcome
  # code #welcome here
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  # code #deal_card here
  first_card = rand(1..11)
  first_card
end

def display_card_total(hand)
  # code #display_card_total here
  puts "Your cards add up to #{hand}"
end

def prompt_user
  # code #prompt_user here
  prompt = "Type 'h' to hit or 's' to stay"
  puts prompt
end

def get_user_input
  # code #get_user_input here
  player_input = gets.chomp
  player_input
end

def end_game(card_total)
  # code #end_game here
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  player_hand = deal_card + deal_card
  display_card_total(player_hand)
  player_hand
end

def hit?(player_hand)
  # code hit? here
  prompt_user
  hit_stay = get_user_input
  if hit_stay == 'h'
    player_hand += deal_card
  elsif hit_stay == 's'
    player_hand
  else
    invalid_command
    prompt_user
    get_user_input
  end
  player_hand
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  player_total_hand  = initial_round
  until player_total_hand > 21 
    player_total_hand  = hit?(player_total_hand)
    display_card_total(player_total_hand)
  end
  end_game(player_total_hand)
end