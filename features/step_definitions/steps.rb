Given(/^I am on facebook homepage$/) do
    $driver.navigate.to "https://www.facebook.com/"
    puts "I am on facebook home page"
    sleep 2

end
Then(/^Match title of the page$/) do
   Homepage
   puts "Title of homepage verified"
end