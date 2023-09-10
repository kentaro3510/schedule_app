def janken
  
  puts "じゃんけん、、、"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
 player_hand = gets.to_i
  program_hand = rand(3)
  
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "ホイ！"
  puts "--------------------"
  puts "あなた:#{jankens[player_hand]}をだしました"
  puts "相手:#{jankens[program_hand]}をだしました"
  
  
  if player_hand == program_hand
    puts "あいこで"
    return janken
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)    
    @janken_result = "win"
    acchimuite_hoi
   

  elsif 
    player_hand == 3
    puts "終わります"
  　return false
  else 
    @janken_result = "lose"
    acchimuite_hoi
  
  end
end

def acchimuite_hoi
  puts "------------------------"
  puts "あっちむいて"
  puts "0(上)1(下)2(左)3(右)"
  
  player_hand2 = gets.to_i
  program_hand2 = rand(4)
  
  looks = ["上","下","左","右"]
  
  puts "ホイ"
  puts "--------------------"
  puts "あなた:#{looks[player_hand2]}をだしました"
  puts "相手:#{looks[program_hand2]}をだしました"
 
  
  if (player_hand2 == program_hand2) && (@janken_result == "win")
    puts "あなたの勝利です"
  
    
  else if (player_hand2 == program_hand2) && (@janken_result == "lose")
    puts "あなたの負けです"
  
  else
    return janken
  end
  end
end

  next_game = true
  while next_game
    next_game = janken
  end
  
  acchimuitehoi = false
  while acchimuitehoi
    acchimuitehoi = acchimuite_hoi
  end