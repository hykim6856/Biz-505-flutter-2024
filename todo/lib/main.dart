import 'package:flutter/material.dart';

void main() {
  runApp(const TODOList());
}

class TODOList extends StatelessWidget {
  const TODOList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.purple.shade100), // 여기서 수정됨
        useMaterial3: true,
      ),
      home: const MainPage(title: 'TODO List'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title}); // 여기서 수정됨

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary, // 여기서 수정됨
        title: Text(widget.title), // 여기서 수정됨
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("안녕하세요")],
        ),
      ),
    );
  }
}
