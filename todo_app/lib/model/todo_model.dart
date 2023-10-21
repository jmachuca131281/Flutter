
class TodoModel{

  String todoTitle;
  bool completed;

  TodoModel({required this.todoTitle, required this.completed});

  void toggleCompleted(){
    completed = !completed;
  }

}

