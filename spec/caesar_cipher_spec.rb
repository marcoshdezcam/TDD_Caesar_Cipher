# frozen_string_literal: true

RSpec.describe CaesarCipher do
  context %(Validate user text input) do
    test = CaesarCipher.new('Remove this ? symbol', 13)
    it %(should discard incompatible chars when creating object) do
      test.text.to eq('Remove this symbol')
    end
  end
  context %(Validate user provided shift factor) do
    test = CaesarCipher.new('Convert to compatible shift factor', 30)
    it %(should transform number to a compatible shift factor between 1 and 26) do
      test.rotation.to eq(4)
    end
  end
end
