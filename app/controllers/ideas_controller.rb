class IdeasController < ApplicationController

  def show      
    @ideas = Idea.find_by(id: params['id'])
  end
  
  def new
  end
  
  def create
    @ideas = Idea.new
    @ideas.name = params['name']
    @ideas.image = params['image']
    @ideas.description = params['description']
    if @ideas.save
      redirect_to "/ideas/#{ i.id }"
    else
      render 'new'
    end
  end
  
  def destroy
    @ideas = Idea.find_by(id: params['id'])
    @ideas.destroy
  end
  
  def index
    @ideas = Idea.all
  end

end