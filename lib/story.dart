class Story {
  String _title;
  String _choice1;
  String _choice2;

  Story({String title, String choice1, String choice2}) {
    this._title = title;
    this._choice1 = choice1;
    this._choice2 = choice2;
  }

  String getTitle() => _title;
}
