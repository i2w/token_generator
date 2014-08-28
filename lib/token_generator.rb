require "securerandom"
require "token_generator/version"

module TokenGenerator
  extend self

  def token(length = self.length, group_size = self.group_size)
    token = (1..length).map{ random_char }.join
    hyphenize(token, group_size)
  end

  def hyphenize(input, group_size = self.group_size)
    return input if group_size < 1
    input.split('').each_slice(group_size).map(&:join).join('-')
  end

  def random_char
    charset[SecureRandom.random_number(charset.size)]
  end

  attr_writer :charset, :group_size, :length

  def charset
    @charset ||= %w{2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
  end

  def group_size
    @group_size ||= 5
  end

  def length
    @length ||= 20
  end
end
