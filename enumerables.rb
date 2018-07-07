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
    


    # if block_given?
    #   for element in self do
    #     yield([element, self.index(element)])
    #   end
    # else
    #   self.to_enum
    # end

    # return enum_for(__method__) { 1 } unless block_given?
    # for element in self do
    #   yield([element, self.index(element)])
    # end
  end

  def my_select

  end

  def my_all?

  end

  def my_any?

  end

  def my_none?

  end

  def my_count

  end

  def my_map

  end

  def my_inject

  end

end


def test
  if block_given?
    "i got it!"
  else
    "No I don't!"
  end
end
