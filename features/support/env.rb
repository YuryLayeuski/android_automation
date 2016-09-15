require "appium_lib"

def caps
	{ caps: { deviceName: "Samsung",
			  platformName: "Android",
			  app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
			  appPackage: "com.ba.universalconverter",
			  appActivity: "MainConverterActivity",
			  newCommandTimeout: "3600",
		appium_lib: {wait: 20,
					 debug: false }
	}}
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object

def find_element_in_list(text)
	puts(get_source)
	4.times{Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x: 0.5, end_y: 0.8, duration: 600).perform}
	
	current_screen = get_source
	previous_screen = ""

  	until (exists{text("#{text}")})||(current_screen == previous_screen) do 
    	Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.2, duration: 600).perform
  		previous_screen = current_screen
  		current_screen = get_source
  	end

  	unless exists{text"#{text}"}    # the same as:   if !exists{text"#{text}"}
  		fail("Element with name #{text} not found")
  	}
  end
end



