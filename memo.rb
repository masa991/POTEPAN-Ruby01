require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.chomp
while true do
    if memo_type == "1"
        puts "拡張子を除いたファイルを入力してください。"
        file_name = gets
        File.open("#{file_name}.csv","w") do |file|
    
        puts "メモしたい内容を記入してください"
        puts "完了したらCtrl + Dを押します"
        memo_text = gets
        file.puts ("#{memo_text}")
        end
        exit
    elsif memo_type == "2"
        puts "拡張子を除いたファイルを入力してください。"
        file_name = gets
        File.open("#{file_name}.csv","a") do |file|
        
        puts "-----既存のメモを表示します。-----"
            File.foreach("#{file_name}.csv") do |row|
            puts row
            end
        puts "編集内容を入力してください。"
        memo_text = gets
        file.puts ("#{memo_text}")
        end
        exit
    else 
        puts "1または2を入力してください。" 
        memo_type = gets.chomp
        redo
    end
end