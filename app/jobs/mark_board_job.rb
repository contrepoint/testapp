class MarkBoardJob < ApplicationJob
  queue_as :default

  def perform(board)
    # byebug
    # byebug
    # ActionCable.server.broadcast "board_channel", { board: board, id: board.id, template: draw(board.state.split(''), board.id) }
    ActionCable.server.broadcast "board_channel", { board: board, template: draw(board, board.id) }
    # byebug # it's not hitting perform
  end

  def draw(board, id)
    # byebug
    ApplicationController.render(partial: 'boards/display_board', locals: { board: board, params: id })
    # byebug
  end
end
