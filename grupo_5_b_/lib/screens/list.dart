import 'package:flutter/material.dart';
import 'package:grupo_5_b_/providers/providers.dart';
import 'package:grupo_5_b_/screens/form.dart';
import 'package:grupo_5_b_/themes/theme.dart';
import 'package:provider/provider.dart';

class RequestListScreen extends StatelessWidget {
  const RequestListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final requestsProvider = Provider.of<RequestsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Logot2.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: const Text('Solicitudes'))
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            // tooltip: 'Comment Icon',
            onPressed: () {Navigator.pushNamed(context, 'home');},
          ), 
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => SizedBox(
            height:100,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
             color: const Color.fromARGB(255, 157, 244, 244), 
            margin: const EdgeInsets.all(5),
            elevation: 10,
              child: ListTile(
                    leading: const Icon(Icons.document_scanner, color: AppTheme.primary),
                    title: Text('Solicitante: ${requestsProvider.requests[index].name}'),
                    subtitle: Text('Razon: ${requestsProvider.requests[index].reason}'),
                    onTap: () {
                      // requestsProvider.selectedRequest =
                      //     requestsProvider.requests[index];
                      // Navigator.pushNamed(context, 'request-form');

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FormScreen(
                                    request: requestsProvider.requests[index],
                                  )));
                    },
                    trailing: const Icon(Icons.arrow_circle_right_outlined),
                  ),
            ),
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: requestsProvider.requests.length),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, 'request-form');
        },
      ),
    );
  }
}
