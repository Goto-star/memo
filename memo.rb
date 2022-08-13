require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type = 1
    puts "拡張子を除いたファイルを入力してください"
    memo_title = gets.to_s
    
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo_content = gets.to_s
    
    CSV.open("#{memo_title}.csv", "w") do |csv|
        csv << ["#{memo_content}"]
    end
elsif memo_type = 2
    puts "編集するファイルを拡張子を除いて入力してください"
    memo_selected_title = gets.to_s
    
    puts "編集内容を記入してください"
    memo_changed_content = gets.to_s
    
    CSV.open("#{memo_selected_title}.csv", "w") do |csv|
        csv << ["#{memo_changed_content}"]
    end
else
    puts "1か2を選択してください"
end
    
    