# Below is the wrong way which don't follow OC principle

class OrderReport
  def initialize(customer:, total:, address:)
    @customer = customer
    @total = total
    @address = address
  end

  def invoice
    puts "Invoice #{@customer} #{@total}"
  end

  def bill_of_supplier
    puts "BOS #{@customer}"
    puts "Shipping Address #{@address}"
  end
end

order = OrderReport.new(customer: 'Google',
                        total: 100,
                        address: '123 Any Street')
order.invoice
order.bill_of_supplier

# In above code when there will be need for extension in future we might need to do changes in same class again and again

# So this code not only lack scalability, it’s also breaking the open close principle.
# A well written class should not have to be re-written in order to integrate a new feature like having an address.

# See report.rb file for better understanding of OCP.
