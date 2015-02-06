require 'rails_helper'

RSpec.describe Task do
  describe '.create' do
    it 'creates a new task' do
      expect(Task.create()).to be_a Task
    end

    it 'is invalid without all params' do
      expect(Task.create(name: 'My title')).not_to be_valid
    end

    it 'is invalid without all params' do
      expect(Task.create(due_by: 'a time')).not_to be_valid
    end

    it 'is valid with all params' do
      expect(Task.create(name: 'Something to do', due_by: 'sometime', est_time: 'num hours', status: 1)).to be_valid
    end
  end
end
