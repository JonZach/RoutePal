module Home

    def Home.render_home
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

        puts logo + menu
    end
end
