class MarkBoardJob < ApplicationJob
  queue_as :default

  def perform(board)
    # byebug

    ActionCable.server.broadcast "board_channel", { board: board, template: draw(board.state.split('')) }

    # byebug # it's not hitting perform
  end

  def draw(board)
    byebug
    ApplicationController.render(partial: 'boards/display_board', board: board)
    # byebug
  end
end
