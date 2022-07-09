Given(/^I am on facebook homepage$/) do
    $driver.navigate.to "https://www.facebook.com/"
    puts "I am on facebook home page"
    sleep 2
end

Then(/^Match title of the page$/) do
    expect($driver.title.start_with? 'Facebook').to eq(true)
    puts "Title of homepage verified"
end