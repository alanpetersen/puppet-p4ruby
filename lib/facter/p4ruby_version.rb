begin
  require 'rubygems'
  require "P4"
  Facter.add(:p4ruby_version) do
    setcode do
      P4.identify.split[1]
    end
  end
rescue LoadError
  # not installed
end
