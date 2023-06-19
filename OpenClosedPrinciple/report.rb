class OrderReport
  def initialize(customer:, total:)
    @customer = customer
    @total = total
  end
end

class Invoice < OrderReport
  def print_out
    puts "Invoice"
    puts @customer
    puts @total
  end
end

class BillOfLading < OrderReport
  def initialize(address:, **args)
    super(**args)
    @address = address
  end

  def print_out
    puts "BOL #{@customer}"
    puts "Shipping Label..."
    puts @address
  end
end

invoice = Invoice.new(customer: "Google",
                      total: 100)

bill_of_lading = BillOfLading.new(customer: "Yahoo",
                                  total: 200,
                                  address: "123 Any Street")

invoice.print_out
bill_of_lading.print_out
