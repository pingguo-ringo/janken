def janken_game
  puts "じゃんけん..."
  puts "0(グー),1(チョキ),2(パー),3(戦わない)"
      
  my_hand = gets.to_i
  puts "ホイ！"
      
    if my_hand == 3
      puts "ゲームを終了します"
      exit
    elsif my_hand > 3
      puts "正しい数値を入力してください"
      janken_game
    end
      
  com_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
      
  puts "----------------"
  puts "あなた：#{jankens[my_hand]}を出しました"
  puts "相手：#{jankens[com_hand]}を出しました"
  puts "----------------"
      
  $win = "win"
      
    if my_hand == com_hand
      puts "あいこで"
      janken_game
    elsif  (my_hand == 0 && com_hand == 1) || (my_hand == 1 && com_hand == 2) || (my_hand == 2 && com_hand == 0)
      $win = "win"
      attimuite_hoi
    elsif  (my_hand == 0 && com_hand == 2) || (my_hand == 1 && com_hand == 0) || (my_hand == 2 && com_hand == 1)
      $win = "lose"
      attimuite_hoi
    end
end  
  
def attimuite_hoi 
  puts "あっちむいて〜"
  puts "0(上)1(下)2(左)3(右)"
  my_direction = gets.to_i
  puts "ホイ！"
  puts "----------------"
      
  com_direction = rand(4)
  directions=["上","下","左","右"]
      
  puts "あなた：#{directions[my_direction]}"
  puts "相手：#{directions[com_direction]}"
  puts "----------------"
    
    if (my_direction == com_direction) && ($win == "win")
        puts "あなたの勝ちです"
    elsif (my_direction == com_direction) && ($win == "lose")
        puts "あなたの負けです"
    else 
        janken_game
    end
end
  
  janken_game