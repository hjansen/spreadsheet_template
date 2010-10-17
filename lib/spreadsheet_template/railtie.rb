require 'spreadsheet_template'
require 'rails'

module SpreadsheetTemplate
  class SpreadsheetTemplateRailtie < Rails::Railtie
    initializer "spreadsheet_template_railtie.boot_spreadsheet_template" do
      Mime::Type.register "application/excel", :xls
      ActionView::Template.register_template_handler 'rxls', SpreadsheetTemplate::Handler
    end
  end
end