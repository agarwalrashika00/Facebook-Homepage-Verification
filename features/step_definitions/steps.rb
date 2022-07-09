Given(/^I am on facebook homepage$/) do
    $driver.navigate.to "https://www.facebook.com/"
    puts "I am on facebook home page"
    sleep 2
end

When(/^I match the title of the page$/) do
    @matched = $driver.title.start_with? 'Facebook'
end

Then(/^It should return true$/) do
    expect(@matched).to eq(true)
    puts "Title of homepage verified"
end