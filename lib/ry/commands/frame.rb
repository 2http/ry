require 'optparse'
require 'methadone'

module Ry 
  module Commands
    class Frame
      include Methadone::Main
      include Methadone::CLILogging

      main do # Add args you want: |like,so|
        # your program code here
        # You can access CLI options via
        # the options Hash
      end

      # supplemental methods here

      # Declare command-line interface here

      # description "one line description of your app"
      description "provides command 'frame'"
      
      # Accept flags via:
      # on("--flag VAL","Some flag")
      # options[flag] will contain VAL
      #
      # Specify switches via:
      # on("--[no-]switch","Some switch")
      #
      # Or, just call OptionParser methods on opts
      #
      # Require an argument
      # arg :some_arg 
      #
      # # Make an argument optional
      # arg :optional_arg, :optional
    end
  end
end

