module EncodeDecodeHelper
  private

  def hex_to_plain_text(hex_string)
    [hex_string].pack('H*')
  end

  def plain_text_to_text(string)
    string.unpack('H*')
  end
end