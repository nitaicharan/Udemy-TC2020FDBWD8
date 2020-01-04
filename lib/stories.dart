import 'story.dart';

class Stories {
  int _number = 0;

  List<Story> _data = [
    Story(
        title:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        title: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        title:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        title:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        title:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        title:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  void next(int choice) {
    List end = [3, 4, 5];
    Map<int, Map<int, int>> choices = {
      0: {1: 2, 2: 1},
      1: {1: 2, 2: 3},
      2: {1: 5, 2: 5},
    };
    if (end.contains(_number)) restart();
    else _number = choices[_number][choice];
  }

  String getStory() => _data[_number].getTitle();
  String getChoice1() => _data[_number].getChoice1();
  String getChoice2() => _data[_number].getChoice2();
  void restart() => _number = 0;
}

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if number is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
