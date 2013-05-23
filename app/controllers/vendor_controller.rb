class VendorController
  #include Formatter

  def initialize vendor_params
    @vendor_params = vendor_params
  end

  def index
    vendors = Vendor.all
    vendors.each_with_index do |vendor, i|
      puts "#{i+1}. #{vendor.vendor_name}"
    end
  end

  def new_vendor
    vendor = Vendor.new(vendor_params[:vendor])
    if vendor.save
      puts "Success!"
    else
      puts "Failure :( #{vendor.errors.full_messages.join(", ")}"
    end
  end

  def list_vendors
    all_vendors = Vendor.all
    all_vendors.each_with_index do |vendor, i|
      puts "#{i+1}. #{vendor.vendor_name}"
    end
  end

  def destroy
    matching_vendors = Vendor.where(vendor_name: vendor_params[:vendor][:vendor_name]).all
    matching_vendors.each do |vendor|
      vendor.destroy
    end
  end


  private

  def vendor_params
    @vendor_params
  end
end