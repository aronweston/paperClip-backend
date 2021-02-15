User.destroy_all
u1 = User.create :username => 'ac', :first_name => 'andre', :last_name => 'caleb', :email => 'ac@ga.co', :password => 'chicken', :city => 'Sydney', :profile_photo => "https://randomuser.me/api/portraits/men/71.jpg", :admin => true
u2 = User.create :username => 'purplehippo', :first_name => 'bill', :last_name => 'murray', :email => 'bmy@ga.co', :password => 'chicken', :city => "Melbourne", :profile_photo => "https://randomuser.me/api/portraits/men/33.jpg"
u3 = User.create :username => 'thegrinch',:first_name => 'craig', :last_name => 'gibson', :email => 'cg@ga.co', :password => 'chicken', :city => "Perth", :profile_photo => "https://randomuser.me/api/portraits/women/71.jpg"
puts "#{User.count} users"