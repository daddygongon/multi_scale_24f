> cat auto_git.rb
puts "git add -A"
puts "git commit"
puts "git commit -m \'first commit\'"
puts "git pull origin main"
puts "git push origin main"
> emacs auto_git.rb  #add shebang
> mv auto_git.rb auto_git
> chmod a+x auto_git

> sudo gem install colorize
Successfully installed colorize-1.1.0
Parsing documentation for colorize-1.1.0
Done installing documentation for colorize after 0 seconds
1 gem installed

> sudo gem install command_line
[sudo] password for bob:
Successfully installed command_line-2.0.1
Parsing documentation for command_line-2.0.1
Done installing documentation for command_line after 0 seconds
1 gem installed
