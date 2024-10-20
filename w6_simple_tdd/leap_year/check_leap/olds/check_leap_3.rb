#+begin_src ruby
p year = ARGV[0].to_i
if year%4 == 0
  if year%100 == 0
    if year%400 == 0
      p true
    else
      p false
    end
  else
    p true
  end
else
  p false
end
#+end_src

