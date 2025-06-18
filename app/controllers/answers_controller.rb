class AnswersController < ApplicationController
  def create
        @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    if @answer.save
      redirect_to question_path(@question), notice: "回答を投稿しました"
    else
      @answers = @question.answers
      render 'questions/show'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:answer, :name)
  end
end
