require 'minitest/autorun'

require 'maven_require'

class TestImport < MiniTest::Unit::TestCase
  include MavenRequire

  def test_maven_require
    maven_require "org.jdbi:jdbi:2.45"
    assert org.skife.jdbi.v2.DBI != nil
  end
end