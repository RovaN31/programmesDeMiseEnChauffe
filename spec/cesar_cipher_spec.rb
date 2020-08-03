require_relative '../lib/cesar_cipher'

describe "Chiffrement de Cesar" do
  it "Resulat de Chiffrement par la methode de Cesar" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello", 2)).to eq("Jgnnq")
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
    expect(caesar_cipher("Hello", 27)).to eq("Cléf de Chiffrement trop élevé ou trop bas, merci d' enter un nombre entre 0 à 26 !!!")
    expect(caesar_cipher("Hello", 43)).to eq("Cléf de Chiffrement trop élevé ou trop bas, merci d' enter un nombre entre 0 à 26 !!!")
    expect(caesar_cipher("Hello", -1)).to eq("Cléf de Chiffrement trop élevé ou trop bas, merci d' enter un nombre entre 0 à 26 !!!")
  end
ends