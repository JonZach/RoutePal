require_relative 'test_helper'

class TestHomeScreen < Test::Unit::TestCase
    include DatabaseCleaner

    def test_home_screen
        logo = <<EOS

,------.  ,-----. ,--. ,--.,--------.,------.,------.   ,---.  ,--.    
|  .--. ''  .-.  '|  | |  |'--.  .--'|  .---'|  .--. ' /  O  ` |  |    
|  '--'.'|  | |  ||  | |  |   |  |   |  `--, |  '--' ||  .-.  ||  |    
|  |`  ` '  '-'  ''  '-'  '   |  |   |  `---.|  | --' |  | |  ||  '--. 
`--' '--' `-----'  `-----'    `--'   `------'`--'     `--' `--'`-----'
EOS

        menu = <<EOS
                      A Tool for GreenPal Vendors
                           by Zach Hendrix

            Want This?                            Type This
            ===============================================
            Home Screen:                           routepal
            Login:                                    login
            Add Appointment:                            add
            Add Vendor:                              signup
            List Appointments:                         list
            List Vendors:                           vendors
            Delete Appointment:   routepal remove <address>
            ===============================================

            Please type a command from above to get started.
            
EOS

        actual = `ruby routepal`
        expected = logo + menu
        assert_equal expected, actual
    end

end