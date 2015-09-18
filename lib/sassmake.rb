require "sassmake/version"
require "sassmake/constant"
require "fileutils"
require "thor"

module Sassmake
  class Build < Thor


    desc 'build', 'builds directories for you'
    def build_directories
      FileUtils.touch '_main.scss'
      for directory in Variables.get_files_and_directories.keys
        FileUtils.mkdir directory
        module_name = directory + '/_' + Variables.get_module_name() + '.scss'
        FileUtils.touch module_name
        for file in Variables.get_files_and_directories[directory]
          file_name = directory + '/_' + file + '.scss'
          FileUtils.touch file_name
          File.open(module_name, "a+") {|f| f.puts "@import " + "\"" + file + "\";" }
        end
        File.open("_main.scss", "a+") {|f| f.puts "@import " + "\"" + directory + "/" + Variables.get_module_name() + "\";" }
      end
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
