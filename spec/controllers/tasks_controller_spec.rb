require 'rails_helper'

RSpec.describe TasksController do
  let(:valid_attributes) {
    { name: 'Something to do', due_by: 'sometime', est_time: 'num hours', status: 1 }
  }

  let(:invalid_attributes) {
    { name: nil, due_by: nil, est_time: nil, status: nil }
  }

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'assigns @tasks' do
      tasks = Task.all
      get :index
      expect(assigns(:tasks)).to eq tasks
    end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new
      expect(response.status).to eq 200
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end

    it 'assigns @task' do
      get :new
      expect(assigns(:task)).to be_a_new Task
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      task = Task.create!(valid_attributes)
      get :show, id: task
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      task = Task.create!(valid_attributes)
      get :show, id: task
      expect(response).to render_template('show')
    end

    it 'assigns @task' do
      task = Task.create!(valid_attributes)
      get :show, id: task
      expect(assigns(:task)).to eq task
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new task' do
        expect {
          post :create, task: valid_attributes
        }.to change(Task, :count).by 1
      end

      it 'assigns @task' do
        post :create, task: valid_attributes
        expect(assigns(:task)).to be_an Task
        expect(assigns(:task)).to be_persisted
      end

      it 'redirects to the created task' do
        post :create, task: valid_attributes
        expect(response).to redirect_to(Task.last)
      end
    end

    context 'with invalid attributes' do
      it 'assigns @task, but does not save a new task' do
        post :create, task: invalid_attributes
        expect(assigns(:task)).to be_a_new Task
      end

      it 're-renders the new template' do
        post :create, task: invalid_attributes
        expect(response).to render_template 'new'
      end
    end
  end

  describe 'GET edit' do
    it 'has a 200 status code' do
      task = Task.create!(valid_attributes)
      get :edit, id: task
      expect(response.status).to eq 200
    end

    it 'renders the edit template' do
      task = Task.create!(valid_attributes)
      get :edit, id: task
      expect(response).to render_template('edit')
    end

    it 'assigns @task' do
      task = Task.create!(valid_attributes)
      get :edit, id: task
      expect(assigns(:task)).to eq task
    end
  end

  describe 'PATCH update' do
    context 'with valid attributes' do
      let(:new_attributes) {
        { name: 'A thing to do', due_by: 'this time', est_time: 'some hours', status: 'complete' }
      }

      it 'updates the requested task' do
        task = Task.create!(valid_attributes)
        patch :update, id: task, task: new_attributes
        task.reload
        expect(task.name).to eq new_attributes[:name]
      end

      it 'assigns @task' do
        task = Task.create!(valid_attributes)
        patch :update, id: task, task: new_attributes
        expect(assigns(:task)).to eq task
      end

      it 'redirects to the task' do
        task = Task.create!(valid_attributes)
        patch :update, id: task, task: new_attributes
        expect(response).to redirect_to task
      end
    end

    context 'with invalid attributes' do
      it 'assigns @task' do
        task = Task.create!(valid_attributes)
        patch :update, id: task, task: invalid_attributes
        expect(assigns(:task)).to eq task
      end

      it 're-renders the edit template' do
        task = Task.create!(valid_attributes)
        patch :update, id: task, task: invalid_attributes
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested task' do
      task = Task.create!(valid_attributes)
      expect {
        delete :destroy, id: task
      }.to change(Task, :count).by(-1)
    end

    it 'redirects to the task list' do
      task = Task.create!(valid_attributes)
      delete :destroy, id: task
      expect(response).to redirect_to tasks_url
    end
  end
end
