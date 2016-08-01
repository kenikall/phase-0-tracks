class Hangman
	attr_reader :gamestate #tells program if the game is over or not

	def initialize(difficulty) #start game of user defined difficulty
		@numcorrect = 0 #number of letters the user has guessed correctly 
		@letters = {} # make an empty hash that will represent the word
		@word = [] #word the user is trying to guess 
		@not_in_word = [] #array of letters guessed, but not in word
		@gamestate = true #while true game is not over
		setup(difficulty) #setup game with random word
	end

	def setup(difficulty) #set up game with a word
		#arrays for easy medium and hard words
		easy = ["toy","zoo","calm","cast","doll","film","fort","kids","mill","nuts","rush","sale","slip","soap","spin","trap","tune","wolf"]
		medium = ["acres","adult","brick","canal","chose","claws","coach","depth","exist","folks","habit","image","label","lungs","mount","pride","rhyme","rocky","shake","shout","silly","slope","solar","stiff","swung","tales","thumb","vapor","advice"]
		hard = ["mission", "require","shaking","shallow","species","tobacco","treated","vessels","contrast","exchange","floating","official","positive","possibly","promised","simplest","essential","fireplace","ourselves","policeman","practical","satisfied","selection","constantly","discussion","mysterious","remarkable","satellites","university","arrangement","explanation","grandmother","independent","mathematics","neighborhood","occasionally","relationship","manufacturing"]		#set word for the game
		#takes random word from word list and splits it into an array of letters
		if difficulty == "easy"
			@word = easy[rand(easy.length-1)].chars
		elsif difficulty == "medium"
			@word = medium[rand(medium.length-1)].chars
		elsif difficulty == "hard"
			@word = hard[rand(hard.length-1)].chars
		end

		#makes word a hash with each key representing a letter and each value of false to indicate the letter has not been guessed
		@word.each{|x| @letters[x] = false}
		progress()
	end 

	def clues #shows user correctly and incorrectly guessed letters
		show = "" #display string
		@word.each{|x|
			if @letters[x] #if letter has been guessed put letter in string
				show += x.upcase
				show += " "
			else #if letter has not been guessed put __ in string
				show += "__ "
			end
		}
		puts show #show how much of the word has been guessed
		if @not_in_word.empty? #only show wrong guesses here
		else
			puts "Not in word: #{@not_in_word.to_s.upcase}"
		end
	end

	def progress #shows how close the man is to being hung
		puts "_________"
		puts "|       |"
		if @not_in_word.count >=7
			puts "|       @"
		elsif @not_in_word.count >= 1 
			puts "|       O"
		else 
			puts "|"
		end

		if @not_in_word.count >= 4
			puts "|      /:\\ "
		elsif @not_in_word.count >= 3
			puts "|      /:"
		elsif @not_in_word.count >= 2
			puts "|      /"
		else
			puts "|"
		end
		
		if @not_in_word.count >= 5
			puts "|       |"
		else 
			puts "|"
		end

		if @not_in_word.count >= 7
			puts "|      / \\ "
		elsif @not_in_word.count >=6
			puts "|      /"
		else
			puts "|"
		end
		
		puts "|_______________"

		clues() #shows incorrect choices
	end

	def check(guess) #check user input against word they are trying to guess
		if @word.include?(guess) #checks to see if guess is in the word
			if @letters[guess] #don't count correct letters twice
			else
				@letters[guess] = true
				@numcorrect += 1
			end
		else
			if @not_in_word.include?(guess) 
			else
				@not_in_word << guess
			end
		end
		endgame() #checks if game is over
	end

	def endgame
		if @not_in_word.count >= 7 #losing message
			puts "Your man has been hanged..."
			progress()
			puts "The word was #{@word.join}."
			puts "You guessed #{@numcorrect} letters correctly in #{@numcorrect+7} tries."
			@gamestate = false
		elsif @numcorrect == @word.count #winning message
			puts "Congrats, your hangman recieved a stay of execution!"
			progress()	
			puts "You figured out the word in #{@numcorrect+@not_in_word.count} guesses"
			@gamestate = false
		else #ifgame is not over show progress
			progress()			
		end
	end 
end


	
alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"] #define valid input

puts "Welcome to hangman what difficulty would you like to try?"#prompt user for difficlty

validinput = false
until validinput #get input from user
	difficulty = gets.chomp.strip
	if difficulty.downcase == "easy" || difficulty.downcase == "medium" || difficulty.downcase == "hard" 
		validinput = true
	else
		puts "The three choices are Easy, Medium, or Hard" 
	end
end
game = Hangman.new(difficulty) #start game

while game.gamestate #while the game isn't over repeat these prompts
	validinput = false
 	until validinput
 		puts "Choose a letter"
 		choice = gets.chomp.downcase

 		if choice.length != 1
 			puts "One letter at a time please."
 		elsif alpha.include?(choice)
 			validinput = true
 		else
 			puts "Only letters please"
 		end
 	end
 	game.check(choice) #run vaid input through the game
end
