# Q0: Why is this error being thrown?
The pokemon model hasn't been created yet so when creating a Pokemon object, it doesn't have anything to reference. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are appearing from the seed since the seed creates new pokemon. They are all listed in the seeds.rb file.  

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button that directs to the capture_path, passing in the id of the pokemon into params. The rest is the attributes of the button.

# Question 3: What would you name your own Pokemon?
Pikachooo?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer_path, which needed the id of the current trainer. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The errors from the validate method is passed into the error params of flash, which is continued to the next action, and thus showed on the view. 
# Give us feedback on the project and decal below!
Fun project!
# Extra credit: Link your Heroku deployed app
