
require 'metasploit/framework/compiler/headers/base'

module Metasploit
  module Framework
    module Compiler
      module Headers
        class Windows < Base

          attr_accessor :lib_dep_map
          attr_accessor :headers_path

          # Initializes the Windows headers.
          def initialize
            super
            @headers_path = File.join(Msf::Config.install_root, 'data', 'headers', 'windows')
            @lib_dep_map = {
              'stddef.h'  => [],
              'Windows.h' => ['stddef.h'],
              'stdlib.h'  => ['stddef.h'],
              'stdio.h'   => ['stddef.h'],
              'String.h'  => ['stddef.h']
            }
          end

        end
      end
    end
  end
end

