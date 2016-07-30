class Hangman
	#make array of guesses readable and writable by player
	def initialize(difficulty) #start game of user defined difficulty
		@wrong_ctr = 0 #make wrong couter = 0
		@letters = {} # make an empty hash that will represent the word
		@word = [] #word the user is trying to guess 
		#make won state false
		#make lost state false
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
				show += x.toupper
			else #if letter has not been guessed put __ in string
				show += " __ "
			end
		}
		puts show #show how much of the word has been guessed
	end

	def progress #shows how close the man is to being hung
		puts "_________"
		puts "|       |"
		if @wrong_ctr >=8
			puts "|       @"
		elsif @wrong_ctr >= 1 
			puts "|       O"
		else 
			puts "|"
		end

		if @wrong_ctr >= 4
			puts "|      /:\\ "
		elsif @wrong_ctr >= 3
			puts "|      /:"
		elsif @wrong_ctr >= 2
			puts "|      /"
		else
			puts "|"
		end
		
		if @wrong_ctr >= 5
			puts "|       |"
		else 
			puts "|"
		end

		if @wrong_ctr >= 7
			puts "|      / \\ "
		elsif @wrong_ctr >=6
			puts "|      /"
		else
			puts "|"
		end
		
		puts "|_______________"

		#shows incorrect choices
		clues()

	end

	def check(guess) #check user input against word they are trying to guess
		#checks to see if guess is in the word
		#prints either __ or correct letters
	end

	def gamestate
		#checks to see if game is won or lost
		#prints winning message and game data
		#prints losing message and game data
	end 
end

#DRIVER CODE
game = Hangman.new("hard")