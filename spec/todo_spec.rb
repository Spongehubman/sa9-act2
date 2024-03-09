require "todo_spec"

RSpec.describe ToDoList do

    let(:todolist) { ToDoList.new() }

    describe "#add" do
        it "adds a todo to the list" do
            todolist.add("Clean my garage.")
            expect(todolist.todos).to eql.(["Clean my garage."])
        end
    end

    describe "#remove" do
        it "removes a todo from the list" do
            todolist.remove
            expect(todolist.todos).to eql.([])
        end
    end

    describe "#todos" do
        it "returns all todos" do
            todolist.add("Feed my pet dog.")
            todolist.add("Fix my car.")
            expect(todolist.todos).to eql(["Feed my pet dog.", "Fix my car."])
        end
    end
end