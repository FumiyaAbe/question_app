class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
# Question.all確認済み
  def new
    @question = Question.new
  end
# Question.new確認済み
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path, notice: "質問が投稿されました！"
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :author)
  end
end