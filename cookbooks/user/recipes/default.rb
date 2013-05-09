# replace [user], [user full name] and [user password hash] with the appropriate values
# [user password hash] is created with SSL

if not File.exists? "/home/[user]"

	user "[user]" do
	  comment "[user full name]"
	  home "/home/[user]"
	  shell "/bin/bash"
	  password "[user password hash]"
	  supports :manage_home => true
	end

	group "sudo" do
	  action :modify
	  members "[user]"
	  append true
	end

	group "ssh" do
	  action :modify
	  members "[user]"
	  append true
	end

end