
class Game
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @currentPlayerIndex = 1;
    end

    def startGame()
        @currentPlayerIndex = @currentPlayerIndex + 1;

        
        if (@currentPlayerIndex % 2 == 0)
            player = @player1
        else
            player = @player2
        end


        r = Random.new
        n1 = r.rand(1...20)
        n2 = r.rand(1...20)
        sum = n1 + n2

        puts "#{player.name}: What does #{n1} plus #{n2} equal?"

        answer = gets.chomp

        if(answer.to_i == sum)
            puts "#{player.name}: YES! You are correct."    
            puts "P1: #{@player1.maxLifeCount} vs P2: #{@player2.maxLifeCount}"
            puts "----- NEW TURN -----"
            startGame()
        else
            puts "#{player.name}: Seriously? No!"
            player.decreaseLife();  
            puts "P1: #{@player1.maxLifeCount} vs P2: #{@player2.maxLifeCount}"

            
            if (@currentPlayerIndex % 2 == 0)
                winner = @player2
            else
                winner = @player1
            end

            if(player.maxLifeCount == 0)
                puts "========================================================="
                puts "#{winner.name} wins with a score of #{winner.maxLifeCount}/3"
                puts "----- GAME OVER -----"
                puts "Good Bye!"
            else
                puts "----- NEW TURN -----"
                startGame()
            end
        end

    end
end