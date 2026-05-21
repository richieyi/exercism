class LogLineParser
  def initialize(line)
    @line = line
    @split_message = line.split(': ')
  end

  def message
    
    @split_message[1].strip
  end

  def log_level
    @split_message[0].delete('[]').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
