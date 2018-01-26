require 'machinist/active_record'
require "securerandom"

Country.blueprint do
  name = "TestName"
  population { 123456789 }
end
