module QuoteUnquote
  module StringExtension
    # Wraps the String with single quotes
    def q esc = nil
      %['#{esc ? self.gsub("'") { esc } : self}']
    end

    # Wraps the String with double quotes
    def qq esc = nil
      %["#{esc ? self.gsub('"') { esc } : self}"]
    end

    # Unwraps single quotes
    def uq esc = nil
      (esc ? self.gsub(esc, "'") : self).gsub(/\A'|'\Z/, '')
    end

    # Unwraps double quotes
    def uqq esc = nil
      (esc ? self.gsub(esc, '"') : self).gsub(/\A"|"\Z/, '')
    end
  end
end
