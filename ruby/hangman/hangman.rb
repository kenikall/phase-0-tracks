class Hangman
	#make array of guesses readable and writable by player
	def initialize(difficulty)
		@wrong_ctr = 0 #make wrong couter = 0
		@word = {} # make an empty hash that will represent the word
		#make won state false
		#make lost state false
		setup(difficulty) #setup game with random word
	end

	def setup(difficulty)
		#arrays for easy medium and hard words
		easy = ["toy", "zoo", "calm","cast","doll","film","fort","kids","mill","nuts","rush","sale","slip","soap","spin","trap","tune","wolf"]
		medium = ["acres","adult","brick","canal","chose","claws","coach","depth","exist","folks","habit","image","label","lungs","mount","pride","rhyme","rocky","shake","shout","silly","slope","solar","stiff","swung","tales","thumb","vapor","advice"]
		hard = ["mission", "require","shaking","shallow","species","tobacco","treated","vessels","contrast","exchange","floating","official","positive","possibly","promised","simplest","essential","fireplace","ourselves","policeman","practical","satisfied","selection","constantly","discussion","mysterious","remarkable","satellites","university","arrangement","explanation","grandmother","independent","mathematics","neighborhood","occasionally","relationship","manufacturing"]		#set word for the game
		#takes random word from word list and splits it into an array of letters
		if difficulty == "easy"
			letters = easy[rand(easy.length-1)].chars
		elsif difficulty == "medium"
			letters = medium[rand(medium.length-1)].chars
		elsif difficulty == "hard"
			letters = hard[rand(hard.length-1)].chars
		end

		#makes word a hash with each key representing a letter and each value of false to indicate the letter has not been guessed
		letters.each{|x| @word[x] = false}
		p letters.join
		p @word
	end 

	def progress
		#shows how close the man is to being hung
		#shows incorrect choices
	end

	def check(guess)
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