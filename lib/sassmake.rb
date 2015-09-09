require "sassmake/version"
require "fileutils"

module Sassmake
  class Build
    def build_directories
      files_and_directories = { "base" => ["base", "reset", "typography"] ,
                                 "components" => ["media", "button", "carousel", "thumbnails"],
                                 "layout" => ["grid", "header", "footer", "sidebar", "forms", "dropdown"],
                                 "pages" => ["home-index", "home-about", "home-contact"],
                                 "themes" => ["user", "admin"],
                                 "utils" => ["variables", "mixins", "functions", "helpers"],
                                 "vendors" => ["bootstrap"]}
      module_name = 'module'
      for directory in files_and_directories.keys
        FileUtils.mkdir directory
        for file in files_and_directories[directory]
          FileUtils.touch directory + '/_' + file + '.scss'
        end
        FileUtils.touch directory + '/_' + module_name + '.scss'
      end
      FileUtils.touch '_main.scss'
    end
  end
end

