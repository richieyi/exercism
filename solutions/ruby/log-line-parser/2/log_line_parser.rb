class LogLineParser
  def initialize(line)
    split_message = line.split(': ')
    @log_level = split_message[0].delete('[]').downcase
    @message = split_message[1].strip
  end

  def message
    @message
  end

  def log_level
    @log_level
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
