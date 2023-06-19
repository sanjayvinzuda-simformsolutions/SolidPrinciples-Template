# Generic class to generate a report
class Report
  def initialize
    @body = 'whatever'
  end

  def print
    XmlFormatter.new.generate @body
  end
end

class XmlFormatter
  def generate(body)
    # convert the body argument into XML
  end
end

# Here Report class is dependent on the XMLFormatter class for generating a report body.
# It means Report class right now is dependent on a detail, not on abstraction. It knows that there must be a class XmlFormatter so it can work.
# Also, question rises - what would happen if we wanted an CSV report? Or a JSON report?
# We’d have to have multiple methods like print_xml, print_csv or print_json.
# This means that our class right now is very tied to the details,
# it knows about the formatter class type instead of knowing just how to use it (abstraction).

# lets refactor it see in file dip_example2.rb
