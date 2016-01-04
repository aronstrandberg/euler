# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'date'

from = Date.parse('1901-01-01')
to = Date.parse('2000-12-31')

puts (from..to).select {|date| date.wday == 0 && date.mday == 1}.size
