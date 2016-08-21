def gene_search(string, substring)
  substring_pt = 0
  start_pt = 0
  end_pt = 0
  until end_pt == string.length - 1
    if string[end_pt] == substring[substring_pt]
      end_pt += 1
      substring_pt += 1
    else
      substring_pt = 0
      start_pt += 1
      until string[start_pt] == substring[substring_pt] || start_pt == string.length - 1
        start_pt += 1
      end
      end_pt = start_pt
    end
    return true if substring_pt == substring.length
  end
  return false
end

p gene_search("ACCATGCA", "CAT") # => True
p gene_search("CATTGA", "CAT") # => True
p gene_search("GGCACACATG", "CACAT") # => True
p gene_search("CAAAT", "CAT") # => False