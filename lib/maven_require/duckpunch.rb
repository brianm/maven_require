require 'maven_require'

module Kernel
  def require *args
    if args[0].include? ':'
      MavenRequire.maven_require *args
    else
      MavenRequire::MavenRequire__::OriginalRequire.call *args
    end
  end
end
