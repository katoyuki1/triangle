class Triangle
  def judge_triangle(side_1, side_2, side_3)
    
    if (side_1 =~ /^[0-9,]+$/) \
      and (side_2 =~ /^[0-9,]+$/) \
      and (side_3 =~ /^[0-9,]+$/) then

      side_1 = side_1.to_i
      side_2 = side_2.to_i
      side_3 = side_3.to_i
    else
      return "整数を入力してください＞＜"
    end

    #三角形かどうか判定
    if (side_1 < side_2 + side_3) \
      and (side_2 < side_1 + side_3) \
      and (side_3 < side_1 + side_2) then

      if (side_1 == side_2) and (side_2 == side_3) then
        #正三角形かどうか判定
        return "正三角形ですね！"
      elsif ((side_1 == side_2) and (side_2 != side_3)) \
         or ((side_2 == side_3) and (side_1 != side_2)) \
         or ((side_3 == side_1) and (side_1 != side_2)) then
         #二等辺三角形かどうか判定
        return "二等辺三角形ですね！"
      else
        #その他
        return "不等辺三角形ですね！"
      end
    else
      return "三角形じゃないです＞＜"
    end

  end
end

triangle = Triangle.new
puts(triangle.judge_triangle(ARGV[0], ARGV[1], ARGV[2]))
