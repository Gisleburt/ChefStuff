execute "apt-get-update-periodic" do
	#if not File.exists?('/var/lib/apt/periodic/update-success-stamp')
	#  || File.mtime('/var/lib/apt/periodic/update-success-stamp') < Time.now - 432000
		command "apt-get update"
		ignore_failure true
	#end
end