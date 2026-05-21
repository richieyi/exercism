class LogLineParser
  attr_reader :message
  attr_reader :log_level
  
  def initialize(line)
    split_message = line.split(': ')
    @log_level = split_message[0].delete('[]').downcase
    @message = split_message[1].strip
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
