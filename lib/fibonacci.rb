# frozen_string_literal: true

# iterative fibonacci
def fibs(n)
  array = []
  (0..n - 1).each { |index| array << (index < 2 ? index : array[-2] + array[-1]) }
  array
end

# recursive fibonacci
def fibs_rec(n)
  n < 2 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end
