# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 
# my code will take a title
# Output:
# Steps:


# 3. Initial Solution

def essay_writer(title, topic, date, thesis_statment, pronoun)
	 if pronoun === "male"
		return "#{topic} was an important person in #{date}. He did a lot. I want to learn more about him. #{thesis_statment} #{topic}'s contribution was important."
	 elsif pronun === "female"
	 	return "#{topic} was an important person in #{date}. She did a lot. I want to learn more about her. #{thesis_statment} #{topic}'s contribution was important."
	 elsif pronun === "place"
	 	return "#{topic} was an important place in #{date}.  It was very influential. I want to learn more about it. #{thesis_statment} #{topic}'s contribution was important."
	 elsif pronoun === "generic"
	 	return "#{topic} was an important topic in #{date}.  It was very influential. I want to learn more about it. #{thesis_statment} #{topic}'s contribution was important."
	 end
end
essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male") 

# 4. Refactored Solution

def essay_writer(title, topic, date, thesis_statment, pronoun)
	male = ["person", "he", "him"]
	female = ["person", "she", "her"]
	place =["place", "it", "it"]
	if pronoun === male
end

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male") 








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


