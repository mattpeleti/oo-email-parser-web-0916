# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# Jonathan is a legend

class EmailParser
  def initialize(raw_email)
    @raw_email = raw_email
  end


  def parse
    @raw_email.split.map{|email| email.end_with?(",") ? email[0...-1] : email }.uniq
  end
end
