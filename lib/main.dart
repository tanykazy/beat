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
            child: ElevatedButton(
          child: const Text("学習開始", style: TextStyle(color: Colors.white)),
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
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('玉手箱')),
        DataColumn(label: Text('だれが')),
        DataColumn(label: Text('する(です)')),
        DataColumn(label: Text('だれ・なに')),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('どこ')),
            DataCell(Text('いつ')),
            DataCell(Text('')),
            DataCell(Text('')),
          ],
        ),
      ],
    );
  }
}
