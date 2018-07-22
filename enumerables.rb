module Enumerable
  def my_each
    if block_given?
      for element in self do
        yield(element)
      end
    else
      self.to_enum
    end
  end

  def my_each_with_index
    if block_given?
      index = 0
      for element in self do
        yield(element, index)
        index += 1
      end
    else
      self.to_enum
    end
  end

  def my_select
    if block_given?
      arr = []
      self.my_each do |element|
        if yield(element) == true
          arr << element
        end
      end
      return arr
    else
      self.to_enum
    end
  end

  def my_all?(arg=nil)
    if block_given?
      status = true
      self.my_each do |element|
        if !yield(element)
          status = false
        end
      end
      return status
    elsif !arg.nil?
      status = true
      self.my_each do |element|
        unless arg === element
          status = false
        end
      end
      status
    elsif !block_given? && arg.nil?
      self.my_all? { |obj| obj }
    end
  end

  def my_any?(arg=nil)
    if block_given?
      status = false
      self.my_each do |element|
        if yield(element)
          status = true
        end
      end
      return status
    elsif !arg.nil?
      status = false
      self.my_each do |element|
        if arg === element
          status = true
        end
      end
      status
    elsif !block_given? && arg.nil?
      self.my_any? { |obj| obj }
    end
  end

  def my_none?(arg = nil)
    if arg.nil?
      puts "gimme some stuff"
    elsif block_given?
      puts arg
    else

    end
  end

  def my_count

  end

  def my_map

  end

  def my_inject

  end

end
