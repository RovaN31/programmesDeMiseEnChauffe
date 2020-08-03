def sum_of_3_or_5_multiples(final_number)
  a = 0
  b = []
  if final_number.is_a?(Integer) && final_number >= 0
    until a == final_number 
      if is_multiple_of_3_or_5?(a)
        b << a
      end
      a += 1
    end
    return b.inject(0){|sum,x| sum + x }
  else
    return "Yo ! Je ne prends que les entiers naturels. TG"
  end
end

def is_multiple_of_3_or_5?(current_number)
  if current_number % 3 == 0 || current_number % 5 == 0
    return true
  else return false
  end
end

