module Home

    def Home.render_home
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

        puts logo + menu
    end
end
