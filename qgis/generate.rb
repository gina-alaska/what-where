#!/usr/bin/env ruby
#

FORCE = ARGV.delete("-force")

%w{ what where }.each do |a|
  Dir.glob("source-exports/#{a}/*.png") do  |i|
    if FORCE or not File.exists?( File.join("out",File.basename(i)) )
      cmd = ["composite #{a}.png",i,File.join("out", File.basename(i))].join(" ")
      puts cmd
      system(cmd)
    else
      puts "skipping #{i}. output exists.  use -force to regenerate"
      next
    end
  end
end
