import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  /// State<> 클래스에 선언된 변수중 final, const 가 부착되지 ㅏㅇㄶ으면
  /// 이 변수는 자동으로 state 변수가 된다.
  /// setState() 라는 함수를 통하여 값을 변경하고,
  /// 변경된 변수는 필요한 곳에서 변화되어 표시한다.
  int _nums = 0;
  void clickHandler() {
    setState(() => _nums++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("안녕하세요")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$_nums",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const Text("대한민국"),
            const Text("우리나라"),
            const Text("REPUBLIC OF KOREA"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: clickHandler,
        child: const Icon(Icons.add),
      ),
    );
  }
}
