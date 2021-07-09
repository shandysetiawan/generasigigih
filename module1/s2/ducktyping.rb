class PdfExporter
    def export
        puts 'Export to .pdf format'
    end
end

class XlsExporter
    def export
        puts 'Export to .xls format'
    end
end

class Report
    def initialize(exporter)
        @exporter=exporter
    end

    def generate_monthly_report
        puts "Generating monthly report"
    end