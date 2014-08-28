class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def new
    @tasks = Task.all
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def destroy
    Task.find(params[:id]).destroy
    render('tasks/destroy.html.erb')
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params[:task])
      render('tasks/success.html.erb')
    else
      render('tasks/update.html.erb')
    end
  end

  def done
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.update(:done => true)
    render('tasks/index.html.erb')
  end

  def not_done
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.update(:done => false)
    render('tasks/index.html.erb')
  end



end
