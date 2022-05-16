class GamesController < ApplicationController
  def new
    # The new action will be used to display a new random grid and a form
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @answer = params[:answer]
    @letters_list = params[:letters_list]

    @result = @letters_list.chars.length - @answer.chars.length == (@letters_list.chars - @answer.chars).length

    @result ? 'bravo' : "Sorry but #{@answer} can't be built out of #{@letters_list.upcase}"
  end
end

# The word can’t be built out of the original grid
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word
