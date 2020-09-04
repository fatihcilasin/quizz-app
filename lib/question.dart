class Question {
  String text;
  bool answer;

  Question({String q, bool a}) {
    text = q;
    answer = a;
  }
}

 /*Future<void> _showDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Result'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Correct answer count: $correctAnswerCount'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Okey'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }*/
