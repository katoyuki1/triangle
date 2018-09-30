require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do

  context '三角形かどうか判定' do
    specify '不等辺三角形' do
      triangle = Triangle.new
      expect(triangle.judge_triangle("2", "3", "4")).to eq "不等辺三角形ですね！"
    end
    specify '二等辺三角形①' do
      triangle = Triangle.new
      expect(triangle.judge_triangle("2", "2", "1")).to eq "二等辺三角形ですね！"
    end
    specify '二等辺三角形②' do
      triangle = Triangle.new
      expect(triangle.judge_triangle("2", "1", "2")).to eq "二等辺三角形ですね！"
    end
    specify '二等辺三角形③' do
      triangle = Triangle.new
      expect(triangle.judge_triangle("1", "2", "2")).to eq "二等辺三角形ですね！"
    end
    specify '正三角形' do
      triangle = Triangle.new
      expect(triangle.judge_triangle("1", "1", "1")).to eq "正三角形ですね！"
    end
    specify '三角形じゃない' do
      triangle = Triangle.new
      expect(triangle.judge_triangle("1", "2", "3")).to eq "三角形じゃないです＞＜"
    end
  end
end
