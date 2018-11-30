require "remove_emoji/version"
require "remove_emoji/rules"

module RemoveEmoji
  class Sanitize

    def initialize(original_string, with: "")
      @original_string = original_string
      @with = with
    end

    def self.call(*args)
      new(*args).sanitize
    end

    def sanitize
      @original_string.gsub(RemoveEmoji::MATCH_EMOJI_CODEPOINTS_RULE, @with)
    end

  end
end
