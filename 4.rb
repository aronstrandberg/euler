# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

999.downto(900).each do |a|
  999.downto(900).each do |b|
    s = (a*b).to_s
    if s[0] == s[-1] && s[1] == s[-2] && s[2] == s[-3]
      puts s
    end
  end
end
