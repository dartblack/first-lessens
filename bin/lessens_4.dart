import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  //დავალება 1
  printWords('Flutter is a best');

  //დავალება 2
  List<Penguin> penguins = [Penguin(5), Penguin(12), Penguin(55)];
  penguins.sort((a, b) => a.weight.compareTo(b.weight));

  //დავალება 3
  var myStrim = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);
  await for (var item in myStrim) {
    print(item);
  }

  //დავალება 4
  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<Comment> comments = [];
      final List<dynamic> dataList = jsonDecode(
        response.body,
      );
      for (var item in dataList) {
        comments.add(Comment.fromJSON(item));
      }
    }
  } on Exception {
    print('error');
  }
}

Future<void> printWords(String text) async {
  final words = text.split(' ');
  for (var word in words) {
    print(await Future<String>.delayed(Duration(seconds: 3), () => word));
  }
}

class Animal {
  void eat() {}

  void move() {}
}

class Penguin extends Animal {
  int weight;

  Penguin(this.weight);

  @override
  void eat() {}

  @override
  void move() {}
}

class Comment {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Comment({this.postId, this.id, this.name, this.body, this.email});

  factory Comment.fromJSON(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int?,
      id: jsonMap['id'] as int?,
      name: jsonMap['name'] as String?,
      email: jsonMap['name'] as String?,
      body: jsonMap['name'] as String?,
    );
  }
}
