class String
  define_method(:word_count) do |word|

    self.scan(/(?i)\b#{word}\b/).size

  end
end
