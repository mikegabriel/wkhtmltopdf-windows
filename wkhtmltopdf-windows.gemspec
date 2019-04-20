Gem::Specification.new do |s|
    s.name = "wkhtmltopdf-windows"
    s.version = IO.read('VERSION').strip
  
    s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
    s.required_ruby_version = '>= 1.8.7'
  
    s.authors = ["Mike Gabriel"]
    s.date = Time.now.strftime('%Y-%m-%d')
    s.description = "This gem provides a wkhtmltopdf executable and configures wisepdf, wicked_pdf, and pdfkit for ruby based applications running Windows"
    s.email = "mike@flipwire.ca"
    s.executables = ["wkhtmltopdf.exe"]
    s.extra_rdoc_files = [
      "LICENSE",
      "README.md"
    ]
    s.files = [
      "LICENSE",
      "README.md",
      "VERSION",
      "bin/wkhtmltopdf.exe",
      "lib/wkhtmltopdf-windows.rb",
      "wkhtmltopdf-windows.gemspec"
    ]
    s.homepage = "http://github.com/mikegabriel/wkhtmltopdf-windows"
    s.licenses = ["MIT"]
    s.require_paths = ["lib"]
    s.rubygems_version = "0.0.1"
    s.summary = "provides wkhtmltopdf executable for windows"
  end
