class ExpensesController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  def index
    @expenses = Expense.all
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new
    if @expense.save
      redirect_to expense_path(@expense)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @expense.update(expense_params)
    redirect_to expense_path(@expense)
  end

  def destroy
    @expense.destroy
    redirect_to expenses_path
  end

  private

  def find
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:name, :date, :value, :parcel, :item_id, :user_id)
  end
end
