class DropDuplicatesInForests < ActiveRecord::Base


Forest.all.group(:loaction).values.each do |dup|
    dup.pop #leave one
    dup.each(&:destroy) #destroy other
  end

end
