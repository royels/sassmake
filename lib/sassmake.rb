require "sassmake/version"
require "sassmake/constant"
require "fileutils"
require "thor"

module Sassmake
  class Build < Thor
    desc 'build', 'builds directories for you'
    def build_directories
      for directory in Variables.get_files_and_directories.keys
        FileUtils.mkdir directory
        for file in Variables.get_files_and_directories[directory]
          FileUtils.touch directory + '/_' + file + '.scss'
        end
        FileUtils.touch directory + '/_' + Variables.get_module_name() + '.scss'
      end
      FileUtils.touch '_main.scss'
    end
    desc 'destroy' , 'destroys built sassmake directories'
    def destroy_directories
      for directory in Variables.get_files_and_directories.keys
        FileUtils.remove_dir directory
      end
      FileUtils.rm '_main.scss'
    end
  end
end
