module QuoteUnquote
  module StringExtension
    # Wraps the String with single quotes
    def q
      %['#{self}']
    end

    # Wraps the String with double quotes
    def qq
      %["#{self}"]
    end

    # Unwraps single quotes
    def uq
      self.gsub(/\A'|'\Z/, '')
    end

    # Unwraps double quotes
    def uqq
      self.gsub(/\A"|"\Z/, '')
    end
  end
end
