#+begin_src ruby
p year = ARGV[0].to_i
if year%4 == 0
  if year%100 == 0
    p false
  else
    p true
  end
else
  p false
end
#+end_src

