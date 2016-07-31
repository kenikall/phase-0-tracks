class Hangman
	attr_reader :gamestate
	
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
		easy = ["toy", "zoo", "calm","cast","doll","film","fort","kids","mill","nuts","rush","sale","slip","soap","spin","trap","tune","wolf"]
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
				show += "  "
			else #if letter has not been guessed put __ in string
				show += " __ "
			end
		}
		puts show #show how much of the word has been guessed
		if @not_in_word.empty?
		else
			puts"\n"
			puts "Not in word: #{@not_in_word.to_s}"
		end
	end

	def progress #shows how close the man is to being hung
		puts "_________"
		puts "|       |"
		if @not_in_word.count >=8
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
		correct = false
		p @letters	
		if @word.include?(guess) #checks to see if guess is in the word
			p guess
			@letters[guess] = true
			@numcorrect += 1
		else
			@not_in_word << guess
		end
		endgame() #checks if game is over
	end

	def endgame
		p "not in word = #{@not_in_word.count}"
		p "number correct = #{@numcorrect}/#{@word.count}"
		if @not_in_word.count >= 7 #losing message
			puts "Your man has been hanged..."
			progress()
			puts "You guessed #{@numcorrect} letters correct in #{@numcorrect+8} tries."
			@game = false
		elsif @numcorrect == @word.count #winning message
			puts "Congrats, your hangman recieved a stay of execution!"
			progress()	
			@gamestate = false
		else #ifgame is not over show progress
			progress()
			
		end
		#prints winning message and game data
		#prints losing message and game data
	end 
end

#DRIVER CODE
 puts "Difficulty?"
 difficulty = gets.chomp
 game = Hangman.new(difficulty)

 while game.gamestate
 	puts "Choose a letter"
 	choice = gets.chomp.downcase
 	game.check(choice)
 end
#game.progress()