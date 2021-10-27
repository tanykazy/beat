import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // 画面の向きを横向きに固定
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(const TopPage())});
}

// トップページ
class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/hello', routes: {
      '/hello': (context) => const Hello(),
      '/beating': (context) => const Beating(),
    });
  }
}

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Center(
            // ボタン： TextButton(枠無), OutlinedButton(枠有), ElevatedButton(色有)
            child: OutlinedButton.icon(
          label: const Text('学習開始'),
          icon: const Icon(Icons.play_arrow),
          onPressed: () => Navigator.pushNamed(context, "/beating"),
        )));
  }
}

// 音読画面
class Beating extends StatelessWidget {
  const Beating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
      title: 'Grid List',
      home: Scaffold(
/*        appBar: AppBar(
          title: Text('Grid List'),
        ),
*/
        body: GridView.count(
          crossAxisCount: 4, // 1行に表示する数
          crossAxisSpacing: 4.0, // 縦スペース
          mainAxisSpacing: 4.0, // 横スペース
          shrinkWrap: true,
          children: List.generate(16, (index) {
            return Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: GridTile(
                    child: Icon(Icons.play_arrow),
                    footer: Center(
                      child: Text(
                        'Meeage $index',
                      ),
                    )));
          }),
        ),
      ),
    );
  }
}
