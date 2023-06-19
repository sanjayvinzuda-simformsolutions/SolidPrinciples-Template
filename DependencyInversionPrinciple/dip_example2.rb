class Report
  def initialize
    @body = 'whatever'
  end

  def print(formatter)
    formatter.generate @body
  end
end

class XmlFormatter
  def generate(body)
    # convert the body argument into XML
  end
end

# Now in this case we can provide any formatter in Reort class to generate report if requirement comes

# like CSV Formatter we have to just pass the fomatter and we can again use Report class.
class CSVFormatter
  def generate(body)
    # convert the body argument into CSV
  end
end
