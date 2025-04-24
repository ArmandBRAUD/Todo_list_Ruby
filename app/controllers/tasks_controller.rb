class TasksController < ApplicationController
    # Affiche la liste de toutes les tâches
    def index
      @tasks = Task.all
    end
  
    # Affiche une tâche spécifique
    def show
      @task = Task.find(params[:id])
    end
  
    # Formulaire pour créer une nouvelle tâche
    def new
      @task = Task.new
    end
  
    # Crée une nouvelle tâche
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to tasks_path, notice: "Tâche créée avec succès !"
      else
        render :new
      end
    end
  
    # Formulaire pour éditer une tâche existante
    def edit
      @task = Task.find(params[:id])
    end
  
    # Met à jour une tâche existante
    def update
      @task = Task.find(params[:id])
      if @task.update(task_params)
        redirect_to tasks_path, notice: "Tâche mise à jour avec succès !"
      else
        render :edit
      end
    end
  
    # Supprime une tâche existante
    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path, notice: "Tâche supprimée avec succès !"
    end
  
    private
  
    # Permet de contrôler quels paramètres sont autorisés lors de la création ou la mise à jour
    def task_params
      params.require(:task).permit(:title, :description, :completed)
    end
  end
  