class Array
  def my_uniq
    uniq_arr = Array.new
    self.select{|ele| uniq_arr << ele unless uniq_arr.include?(ele) }
    return uniq_arr
  end
  
  def two_sum
    sums = []
    self[0...-1].each.with_index do |ele_1, idx_1| 
      self[0...-1].each_with_index do |ele_2, idx_2|
        sums << [idx_1,idx_2].sort if ele_1 + ele_2 == 0
      end
    end
    sums.my_uniq
  end
end