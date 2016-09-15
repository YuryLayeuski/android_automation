Before do
	$driver.start_driver   #start appium driver
end


After do |scenario|
	if scenario.failed?
		unless File.directory?("screenshots")
			FileUtils.mkdir_p("screenshots")          #create screenshots directory
		end
		#file 
		time_stamp = Time.now.strftime("%y-%m-%d-%H.%M.%s")
		screenshot_name = "#{time_stamp}.png"
		screenshot_file = File.join("screenshots", screenshot_name)
		#take actual screenshot
		$driver.screenshot(screenshot_file)
		#embed report file
		embed("#{screenshot_file}", "image/png")
	end

	$driver.driver_quit    #quit from driver
end


AfterConfiguration do
	FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end