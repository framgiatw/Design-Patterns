class ReportTemplate
  def initialize
    @title = 'Monthly Report'
    @text =  ['Sample text 1', 'Sample text 2', 'Sample text 3']
  end

  def output_report
    output_start
    output_head
    output_body_start
    @text.each { |line| output_line(line) }
    output_body_end
    output_end
  end

  def output_start
  end

  def output_head
    output_line(@title)
  end

  def output_body_start
  end

  def output_line(_line)
    raise 'Called abstract method: output_line'
  end

  def output_body_end
  end

  def output_end
  end
end

class PlainTextReport < ReportTemplate
  def output_start
  end

  def output_head
    puts "**** #{@title} ****"
    puts
  end

  def output_body_start
  end

  def output_line(line)
    puts line
  end

  def output_body_end
  end

  def output_end
  end
end

class HTMLReport < ReportTemplate
  def output_start
    puts '<html>'
  end

  def output_head
    puts '  <head>'
    puts "    <title>#{@title}</title>"
    puts '  </head>'
  end

  def output_body_start
    puts '<body>'
  end

  def output_line(line)
    puts "  <p>#{line}</p>"
  end

  def output_body_end
    puts '</body>'
  end

  def output_end
    puts '</html>'
  end
end


report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report
