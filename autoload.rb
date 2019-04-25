require 'test/unit'
extend Test::Unit::Assertions

path = File.expand_path(".")
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)

require "example"

assert Example.const_defined?("Omega"), "Example::Omega should be defined"
assert Example::Omega.const_defined?("Constant"), "Example::Omega::Constant should be defined"
assert Example.const_defined?("Alpha"), "Example::Alpha should be defined"
assert Example::Alpha.const_defined?("Constant"), "Example::Alpha::Constant should be defined"
