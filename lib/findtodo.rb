def check_string(text)
  #if text == "" # here maybe to refactor1
  #  return false # here maybe to refactor1
  #elsif text.nil?
  #  fail "there is no input"
  #else
  #  stripped_text = text.gsub(" ", "")
  #  stripped_text.upcase.strip.include?("TODO") == true ?  true : false
  #end

  return false if text == "" 
  fail "there is no input" if text.nil?
  text.gsub(" ", "").upcase.strip.include?("TODO") == true ?  true : false
  
end


=begin
TODO Method Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

check_string(text)

test is a string (e.g. "TODO: walking the dog" or "go shop! Todo!")
checking_sting => boolean (true) if TODO is found


# check_string will return true if the string includes "TODO"

match = check_string(text)

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

#check_string("TODO: walking the dog") => true
#check_string("go shop! Todo!") => true
#check_string("TO DO: walking the dog") => true
#check_string("") => false
#check_string("walking the cat") => false
#check_string(nil) => "there is no input" - raises error


4. Implement the Behaviour

=end