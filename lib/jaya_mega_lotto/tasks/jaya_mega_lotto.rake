namespace :jaya_mega_lotto do
  desc "Generate a random lottery drawing" 
  task :draw do
    puts JayaMegaLotto::Drawing.new.draw 
  end
end
