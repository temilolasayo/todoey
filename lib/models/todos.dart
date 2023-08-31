// ignore_for_file: public_member_api_docs, sort_constructors_first
class ToDo {
  ToDo({
    this.todoText = "",
    this.isChecked = false,
  });
  final String todoText;
  bool isChecked;

  void checkBoxStatus() {
    isChecked = !isChecked;
    print(isChecked);
  }
}
