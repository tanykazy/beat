import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // 画面の向きを横向きに固定
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(Beating())});
}

// Beating: ビートを刻みながら音読する画面
class Beating extends StatelessWidget {
  const Beating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
      // Scaffold Widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Beat'),
        ),
        body: Center(child: MyStatelessWidget()),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
