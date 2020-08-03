def caesar_cipher (message, clefChiffrement)

# acsii_split = message.split(//).map!{ |a| a == " " ? a.ord : (a.ord + clefChiffrement) }

  # We verify if the clefChiffrement is valid (26 number in the alphabet)
  if clefChiffrement >= 0 && clefChiffrement <= 26

    # Split all character of the message in an array and convert to ASCII number
    ascii_split = message.split(//).map!{ |a| a.ord }

    ascii_change_with_key = ascii_split.map! do |ascii_number|

      # true if the character is a small letter
      if ascii_number <= 122 && 97 <= ascii_number
        ascii_number = ascii_number + clefChiffrement

        # Verify if the number is higher than "z". If true, it start again from "a"
        if ascii_number > 122
          ascii_number = (ascii_number - 122) + (97 - 1)
        else
          ascii_number = ascii_number
        end

      # true if the character is a capital letter
      elsif ascii_number <= 90 && 65 <= ascii_number
        ascii_number = ascii_number + clefChiffrement

        # Verify if the number is higher than "Z". If true, it start again from "A"
        if ascii_number > 90
          ascii_number = (ascii_number - 90) + (65 - 1)
        else
          ascii_number = ascii_number
        end

      else
        # Doen't change if it's an other character
        ascii_number = ascii_number
      end
    end

    # return the array with ASCII convertion to letter and joint all the letter together
    return ascii_change_with_key.map!{ |b| b.chr }.join

  else
    return "Cléf de Chiffrement trop élevé ou trop bas, merci d' enter un nombre entre 0 à 26 !!!"
  end
end

alphabetClair=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z"]
alphabetCesar=[]
clefDecalage=3
#print alphabetClair

puts caesar_cipher("DCODEX",27)
