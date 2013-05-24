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
            Home Screen:                    routepal <home>
            Add Appointment:         routepal add <address>
            Add Vendor:       routepal signup <vendor_name>
            List Appointments:                routepal list
            List Vendors:                  routepal vendors
            Delete Appointment:   routepal remove <address>
EOS

        actual = `ruby routepal home`
        expected = logo + menu
        assert_equal expected, actual
    end

end