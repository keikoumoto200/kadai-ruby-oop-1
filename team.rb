# Teamクラス（設計図）に４つの要素を書き込む・・・インスタンス変数
class Team
  attr_accessor :name, :win, :lose, :draw

# インスタンスを初期化するメソッド　initialize（変数） 
  def initialize(name,win,lose,draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスメソッド・・・勝率を戻り値で返す  
  def calc_win_rate
    return win.to_f / ( win + lose )
  end
  
  # インスタンスメソッド・・・各チームの成績を表示する
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end
  
# インスタンスの生成
team_giants = Team.new("Giants", 67, 45, 8)
team_tigers = Team.new("Tigers", 60, 53, 7)
team_dragons = Team.new("Dragons", 60, 55, 5)
team_baystars = Team.new("Baystars", 56, 58, 6)
team_carp = Team.new("Carp", 52, 56, 12)
team_swallows =Team.new("Swallows", 41, 69, 10)
  
#表の見出し
puts "【プロ野球 セントラル・リーグ勝敗表】"
  
# show_team_resultの呼び出し
team_giants.show_team_result
team_tigers.show_team_result
team_dragons.show_team_result
team_baystars.show_team_result
team_carp.show_team_result
team_swallows.show_team_result