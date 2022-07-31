# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
  attr_accessor :email_addrs_str

  def initialize email_addrs_str
    @email_addrs_str = email_addrs_str
  end

  def parse
    # Parse email_addrs_str into individual email addrs
    # Must handle whitespace or comma separated
    # Must only return unique addresses (.uniq)
    # Return them in an arr
    email_addrs_str.split(/,|\s/).reject(&:empty?).uniq
  end
end
