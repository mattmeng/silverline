module Silverline
  class SilverlineException < StandardError; end

  class NotAView < SilverlineException; end
end