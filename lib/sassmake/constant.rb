module Variables
  @@files_and_directories = { "base" => ["base", "reset", "typography"] ,
                             "components" => ["media", "button", "carousel", "thumbnails"],
                             "layout" => ["grid", "header", "footer", "sidebar", "forms", "dropdown"],
                             "pages" => ["home-index", "home-about", "home-contact"],
                             "themes" => ["user", "admin"],
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
