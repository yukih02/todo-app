class BoardsController < ApplicationController
    before_action :set_board, only: [:show]
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @boards = Board.all
    end

    def show
    end

    def new
        @board = Board.new
    end

    def create
        @board = current_user.boards.build(board_params)
        if @board.save
            redirect_to board_path(@board),notice: '保存できたよ'
        else
            flash.now[:error] = '保存に失敗しました'
            render :new, status: :unprocessable_entity
        end
    end


    def edit
        @board = current_user.boards.find(params[:id])
    end

    def update
        @board = current_user.boards.find(params[:id])
        if @board.update(board_params)
            redirect_to board_path(@board), notice: '更新できました'
        else
            flash.now[:error] = '更新できませんでした'
            render :edit, status: :unprocessable_entity
        end
    end

    private
    def board_params
        params.require(:board).permit(:title, :content, :eyecatch)
    end

    def set_board
        @board = Board.find(params[:id])
    end
end