class Homepage < Test::Unit::TestCase
    def setup
        @driver = $driver
    end

    def verify_title
        assert_equal('Facebook - log in or sign up', @driver.title)
    end
end