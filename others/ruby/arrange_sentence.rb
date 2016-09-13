# arrange sentence in terms of upper and lower leading letter.

def arrange_sentence(str)
  str = cleanup_string(str)
  arr = str.split(" ")
  lower = []
  upper = []
  arr.each do |e|
    code = e[0].ord
    if code > 96 && code < 123
      lower.push(e)
    elsif code > 64 && code < 91
      upper.push(e)
    end
  end
  (sort(lower) + sort(upper).reverse).join(" ")
end

def cleanup_string(str)
  # Getting rid of non-letter and non-space chars
  str.gsub(/[^a-zA-Z ]/, '')
end

def sort(arr)
  arr.sort {|x, y| x <=> y}
end

puts arrange_sentence("I Am a basic bitch") == "a basic bitch I Am"