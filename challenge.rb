# Fork this repository to your personal account and
# clone that fork to your machine.
# 
# Answer each of the questions below, adding comments
# beneath them as appropriate.

# 1. Read this file. What do you expect it to do when
#    you run it?
# 2. Now run it. Are there any bugs?
# 3. Can you make any improvements to the program?
# 4. How many Q's are there in "prufrock.txt"?
# 5. (Harder) What are the 5 most common letters in "prufrock.txt"?

# When you're done (at least with 4), commit your work,
# push it to your repo, and open a pull request.

require 'pry'

def count_letters_in_file file_name
  text = File.read(file_name).downcase.gsub(' ', '')

  # text = "The quick brown fox jumps ..."
  letter_occurrences = Hash.new
  text.chars.each do |letter|
    if letter_occurrences[letter]
      letter_occurrences[letter] += 1
    else
      letter_occurrences[letter] = 1
    end
  end
  #puts "I'm inside the function"
  #return letter_occurrences
  letter_occurrences
end

#puts "I'm outside the function"

letter_occurrences = count_letters_in_file "fox.txt"

ac = letter_occurrences["a"]
zc = letter_occurrences["z"]

#puts "Text is: #{text}"
puts "There are #{ac} A's and #{zc} Z's"

prufrock_letters = count_letters_in_file "prufrock.txt"
qs = prufrock_letters["q"]
puts "There are #{qs} Q's in prufrock"
