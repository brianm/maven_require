require 'minitest/autorun'

require 'maven_require'
require 'maven_require/duckpunch'

require 'java'

class TestRequire < MiniTest::Unit::TestCase

  def test_maven_require
    MavenRequire::maven_require "org.jdbi:jdbi:2.45"
    assert org.skife.jdbi.v2.DBI != nil
  end

  def test_duckpunching   
    require "org.slf4j:slf4j-nop:1.7.2"
    require "org.apache.activemq:activemq-core:5.7.0"
    assert org.apache.activemq != nil
  end

  def test_several_in_one
    require "com.google.guava:guava:14.0-rc2",
            "io.airlift:airline:0.5"
    assert Java::IoAirliftCommand::Cli != nil
  end
end