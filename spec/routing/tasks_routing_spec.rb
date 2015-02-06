require 'rails_helper'

RSpec.describe 'routes for tasks' do
  it 'routes GET /tasks to the tasks controller' do
    expect(get('/tasks')).to route_to('tasks#index')
  end

  it 'routes GET /tasks/new to the tasks controller' do
    expect(get('/tasks/new')).to route_to('tasks#new')
  end

  it 'routes POST /tasks to the tasks controller' do
    expect(post('/tasks')).to route_to('tasks#create')
  end

  it 'routes GET /tasks/1 to the tasks controller and sets id' do
    expect(get('/tasks/1')).to route_to(
      controller: 'tasks',
      action: 'show',
      id: '1'
    )
  end

  it 'routes GET /tasks/1/edit to the tasks controller and sets id' do
    expect(get('tasks/1/edit')).to route_to(
      controller: 'tasks',
      action: 'edit',
      id: '1'
    )
  end

  it 'routes PATCH /tasks/1 to the tasks controller and sets id' do
    expect(patch('tasks/1')).to route_to(
      controller: 'tasks',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /tasks/1 to the tasks controller and sets id' do
    expect(delete('tasks/1')).to route_to(
      controller: 'tasks',
      action: 'destroy',
      id: '1'
    )
  end
end
