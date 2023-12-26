## เกมเป่ายิ้งฉุบ score ถึง 5 ก่อนชนะ

play <- function() {

  ## welcome
  flush.console()
  user_name <- readline("Hi! What's your name : ")
  print(paste("Hi! Welcome to Rock Scissors Paper ", user_name ))

  ## score
  user_points <- 0
  computer_points <- 0

  ## create variables
  hands <- c("rock","scissors","paper")

  ## round
  while (user_points < 5 & computer_points < 5) {

    ## condition
    flush.console()
    user_hand <- readline("Enter your choice (rock, scissors, paper) :")
    print(paste("OK! You chose",user_hand))
    comp_hand <- sample(hands,1) ## สุ่มเลือกมา 1 อัน
    print(paste("Time for my turn : I choose",comp_hand))

    if(
      (user_hand == "paper" & comp_hand == "paper") ||
      (user_hand == "rock" & comp_hand == "rock") ||
      (user_hand == "scissors" & comp_hand == "scissors")
    ) {
      print("Draw")
    } else if (
      (user_hand == "paper" & comp_hand == "rock") ||
      (user_hand == "rock" & comp_hand == "scissors") ||
      (user_hand == "scissors" & comp_hand == "paper")
    ) {
      print("you win")
      user_points <- user_points + 1
    } else if (
      (user_hand == "paper" & comp_hand == "scissors") ||
      (user_hand == "scissors" & comp_hand == "rock") ||
      (user_hand == "rock" & comp_hand == "paper")
    )
    {
      print("You Lose")
      computer_points <- computer_points + 1

    } else (print("Invalid choice. Please enter Rock, Paper, or Scissors.")
    )
    print(paste("Your score is" , user_points))
    print(paste("My score is" , computer_points))
  }

  ## result
  if (user_points > computer_points) {
    print(paste("You win score is ", user_points , ":" ,computer_points))
  } else if (computer_points > user_points) {
    print(paste("You lose score is ", user_points, ":" ,computer_points))
  }
}

play()
