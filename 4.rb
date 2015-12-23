999.downto(900).each do |a|
  999.downto(900).each do |b|
    s = (a*b).to_s
    if s[0] == s[-1] && s[1] == s[-2] && s[2] == s[-3]
      puts s
    end
  end
end
