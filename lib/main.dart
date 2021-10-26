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
    return MaterialApp(
        routes: {
          '/beating': (context) => const Beating(),
        },
        title: 'Welcome to Flutter',
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text('Beat App'),
                  centerTitle: true,
                  actions: [
                    IconButton(
                        icon: const Icon(Icons.search), onPressed: () {}),
                  ],
                  elevation: 0,
                ),
                extendBodyBehindAppBar: true,
                body: Center(
                    child: ElevatedButton(
                  child:
                      const Text("学習開始", style: TextStyle(color: Colors.white)),
                  onPressed: () => Navigator.pushNamed(context, "/beating"),
                )))));
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
