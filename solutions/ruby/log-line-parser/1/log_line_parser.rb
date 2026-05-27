class LogLineParser
  def initialize(line)
    @line = line.strip
  end

  def message
    return @line.gsub(@line.split(":")[0], "").gsub(":", "").strip()
  end

  def log_level
    return @line.gsub(@line.split(":")[1] ,"").gsub(/[:\[\]]/, "").downcase
  end

  def reformat
    return "#{message} (#{log_level})"
  end
end