module Variables
  @@files_and_directories = { "base" => ["base", "reset", "typography"] ,
                             "components" => ["media", "button", "carousel", "thumbnails"],
                             "layout" => ["grid", "header", "footer", "sidebar", "forms", "dropdown"],
                             "pages" => ["_page1", "_page2", "_page3"],
                             "utils" => ["variables", "mixins", "functions", "helpers"],
                             "vendors" => ["bootstrap"]
                           }
  @@module_name = 'module'
  def self.get_files_and_directories
    @@files_and_directories
  end

  def self.get_module_name
    @@module_name
  end
end
