require 'mini_aether'

module MavenRequire
    module MavenRequire__
        OriginalRequire = Kernel.method :require
    end

    def self.maven_require *coordinates
        MiniAether.setup do
            coordinates.each {|c| jar c}            
        end
    end

    def maven_require *coordinates
        MiniAether.setup do
            coordinates.each {|c| jar c}            
        end
    end
end