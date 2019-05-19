class DogsController < ApplicationController
  before_action :get_dog, only: [:show, :edit, :update]

  def index
    # byebug
    if params[:sort]
      @dogs = Dog.all.sort_by{|dog| dog.employees.count}

    else
      @dogs = Dog.all
    end
  end

  def show

  end

  def edit

  end

  private

  def get_dog
    @dog = Dog.find(params[:id])
  end



end
