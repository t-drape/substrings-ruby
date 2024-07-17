  # Step 1:
    # Get text and dictionary
  # Step 2:
    # Pass text and dictionary to method
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  substrings_key_element_from_dict_value_one = Hash.new
  word_locase = text.downcase.split()
  new_dictionary_words_locase = dictionary.map {|word| word.downcase}

  word_locase.each do |text_word|
    new_dictionary_words_locase.each do |dict_word|
      if text_word.include? dict_word
        if substrings_key_element_from_dict_value_one[dict_word]
          substrings_key_element_from_dict_value_one[dict_word] += 1
        else
          substrings_key_element_from_dict_value_one[dict_word] = 1
        end
      end
    end
  end
  return substrings_key_element_from_dict_value_one
end


  # Step 3:
  # Make sure method works for one word

  # Step 3a: 
    # Access every element from dictionary
  # Step 4:
    # Allow to method to accept multiple words
  # Step 4a:
    # Access every element of text
  # for text_word in word_locase
  #   # Step 4b: 
  #     # For every text element, access every element of dictionary
  #   for word in new_dictionary_words_locase
  #     # Step 3b:
  #       # If element from dictionary is a substring of word
  #     # Step 4c:
  #       # If element of dictionary is a substring of element of text
  #     if text_word.include? word
  #         # Step 3ca: 
  #           # Add dictionary element to new Hash
  #         # Step 4d:
  #           # Add dictionary element to new Hash
  #         # Step 3cb:
  #           # Set dictionary element value equal to 1
  #         # Step 4e:
  #           # Set value of dictionary element to 1

  #         # Step 5:
  #           # While accessing every element of text,
  #         # Step 5a:
  #           # If dictionary element is key in new Hash,
  #       if substrings_key_element_from_dict_value_one[word]
  #         # Step 5aa:
  #           # Increment value by 1
  #         substrings_key_element_from_dict_value_one[word] += 1
  #       else
  #         # Step 5ab:
  #           # Else, set value equal to 1
  #         substrings_key_element_from_dict_value_one[word] = 1
  #       end
  #     end
  #   end
  # end
  # Step 6:
    # Return new Hash  


p substrings("Howdy partner, sit down! How's it going?", dictionary)

