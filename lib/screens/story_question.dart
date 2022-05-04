class StoryQuestion {
  String _question;
  String _destructiveChoice;
  String _constructiveChoice;
  StoryQuestion(
      this._question, this._destructiveChoice, this._constructiveChoice);

  String get question => _question;
  String get destructiveChoice => _destructiveChoice;
  String get constructiveChoice => _constructiveChoice;
}
