def puts_link(html)
"
#+begin_export html
<a href=\"#{html}\"
  class=\"example\">
  <img src=\"\"
  width=200
  alt=finite_temp
  >
</a>
#+end_export
"
end
  
Dir.glob('*/*.html').each_with_index do |html, i|
  puts "# %d: %s" % [i, html]
  puts puts_link(html)
end
