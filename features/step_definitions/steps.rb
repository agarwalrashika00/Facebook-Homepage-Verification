Given(/^I am on facebook homepage$/) do
    @driver.navigate.to "https://www.facebook.com/"
    puts "I am on facebook home page"
    sleep 2
end

When(/^I match the title of the page$/) do
    @matched = @driver.title.start_with? 'Facebook'
end

Then(/^It should return true$/) do
    expect(@matched).to eq(true)
    puts "Title of homepage verified"
end

When('I click on create new account') do
    if @driver.find_element(:class, '_4jy2').displayed?    
        @driver.find_element(:class, '_4jy2').click
    end
    sleep 2
end

And('fill the sign up form') do
    if @driver.find_element(:name, 'firstname').displayed?
        @driver.find_element(:name, 'firstname').send_keys "Selenium"
    end
    sleep 1
    
    if @driver.find_element(:name, 'lastname').displayed?
        @driver.find_element(:name, 'lastname').send_keys "Webdriver"
    end
    sleep 1
    
    if @driver.find_element(:name, 'reg_email__').displayed?
        @driver.find_element(:name, 'reg_email__').send_keys "1234567899"
    end
    sleep 1
    
    if @driver.find_element(:name, 'reg_passwd__').displayed?
        @driver.find_element(:name, 'reg_passwd__').send_keys "selenium"
    end
    sleep 1
    
    if @driver.find_element(:name, 'birthday_day').displayed?
        dates = @driver.find_elements(:tag_name, 'option')
        dates.each do |date|
            if(date.text == '1')
                date.click
                break
            end
        end
    end
    
    if @driver.find_element(:name, 'birthday_month').displayed?
        months = @driver.find_elements(:tag_name, 'option')
        months.each do |month|
            if(month.text == 'Jan')
                month.click
                break
            end
        end
    end
    
    if @driver.find_element(:name, 'birthday_year').displayed?
        years = @driver.find_elements(:tag_name, 'option')
        years.each do |year|
            if(year.text == '1990')
                year.click
                break
            end
        end
    end
    
    if @driver.find_element(:class, '_5k_3').displayed?
        genders = @driver.find_elements(:class, '_58mt')
        genders.each do |gender|
            if(gender.text == "Male")
                gender.click
            end
        end
    end
    sleep 1
end


And('click sign up button') do
    if  @driver.find_element(:name, 'websubmit').displayed?
        @driver.find_element(:name, 'websubmit').click
    end
end

Then('I verify the error msg') do
    if  @driver.find_element(:id, 'reg_error').displayed?
        reg_err_text = @driver.find_element(:id, 'reg_error').text
        expect(reg_err_text).to eq('An error occurred. Please try again.')
    end
end