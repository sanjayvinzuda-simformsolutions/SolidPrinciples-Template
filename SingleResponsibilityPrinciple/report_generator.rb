class FinancialReportGenerator
  def initialize(transactions)
    @transactions = transactions
  end

  def generate
    @transactions.map do |t|
      "amount: #{t.amount} type: #{t.type}"
    end.join("\n")
  end
end

account = [{ name: 'John', email: 'john@example.com' },
           { name: 'Robert', email: 'robert@example.com' }]
report = FinancialReportGenerator.new(transcation).generate
FinancialReportMailer.new(report, account).deliver
