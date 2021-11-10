library my_prj.globals;

late List<Task> tasksList = [];

class Task {
  late String name;
  late int index;
  late bool checked;
  Task(this.name, this.index, this.checked);
}

