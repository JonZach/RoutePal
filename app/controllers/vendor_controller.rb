class VendorController
  #include Formatter

  def initialize params
    @params = params
  end

  def index
    vendors = Vendor.all
    vendors.each_with_index do |vendor, i|
      puts "#{i+1}. #{vendor.vendor_name}"
    end
  end

  def create
    vendor = Vendor.new(params[:vendor])
    if vendor.save
      puts "Success!"
    else
      puts "Failure :( #{vendor.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_vendors = Vendor.where(vendor_name: params[:vendor][:vendor_name]).all
    matching_vendors.each do |vendor|
      vendor.destroy
    end
  end


  private

  def params
    @params
  end
end