# frozen_string_literal: true

RSpec.describe CaesarCipher do
  context %(Validate and filter user text input) do
    test = CaesarCipher.new('Remove this ? symbol', 13)
    it %(should discard incompatible chars when creating object) do
      test.text.to eq('Remove this symbol')
    end
  end
  context %(Validate and filter user provided shift factor) do
    test = CaesarCipher.new('Convert to compatible shift factor', 30)
    it %(should transform number to a compatible shift factor between 1 and 26) do
      test.rotation.to eq(4)
    end
  end
  context %(Encrypts and decrypts text with a given shift) do
    it %(Encrypts 'It works' with a shift of 10) do
      test = CaesarCipher.new('It works', 10)
      test.encrypt.to eq('Sd gybuc')
    end
    it %(Encrypts a message with a shift of 10 and discards symbols) do
      test = CaesarCipher.new('It works!', 10)
      test.encrypt.to eq('Sd gybuc')
    end
  end
end
