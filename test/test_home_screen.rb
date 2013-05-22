require_relative 'test_helper'

class TestHomeScreen < Test::Unit::TestCase
    include DatabaseCleaner

    def test_home_screen
        logo = <<EOS

     ____   __   _  _  ____  ____  ____   __   __   
    (  _ \ /  \ / )( \(_  _)(  __)(  _ \ / _\ (  )  
     )   /(  O )) \/ (  )(   ) _)  ) __//    \/ (_/\
    (__\_) \__/ \____/ (__) (____)(__)  \_/\_/\____/
EOS

        menu = <<EOS
              A Tool for GreenPal Vendors
                   by Zach Hendrix

    Want This?                            Type This
    ===============================================
    Home Screen:                           routepal
    Add Appointment:         routepal add <address>
    List Appointments:                routepal list
    List Vendors:                  routepal vendors
    Delete Appointment:   routepal remove <address>
EOS

        actual = `ruby routepal`
        expected = logo + menu
        assert_equal expected, actual
    end

end