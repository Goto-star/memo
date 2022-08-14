require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    memo_title = gets.chomp
    
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo_content = gets.chomp
    
    CSV.open("#{memo_title}.csv", "w") do |csv|
        csv << ["#{memo_content}"]
    end
elsif memo_type == 2
    puts "編集するファイルを拡張子を除いて入力してください"
    memo_selected_title = gets.chomp
    
    puts "編集内容を記入してください"
    memo_changed_content = gets.chomp
    
    CSV.open("#{memo_selected_title}.csv", "a") do |csv|
        csv << ["#{memo_changed_content}"]
    end
else
    puts "半角の1か2を選択してください"
end
    
    