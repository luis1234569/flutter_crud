import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:grupo_5_b_/models/request_model.dart';
import 'package:grupo_5_b_/providers/providers.dart';
// import 'package:grupo_5_b_/screens/screens.dart';
import 'package:grupo_5_b_/themes/theme.dart';
import 'package:grupo_5_b_/widgets/widgets.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatelessWidget {
  FormScreen({
    super.key,
    this.request
  });

  Request ? request;

  final _formKey = GlobalKey < FormState > ();

  Widget _showToast() {
    return const SnackBar(content: Text("Solicitud registrada"));
  }

  @override
  Widget build(BuildContext context) {
    final Map < String, dynamic > myFormValues = {
      "id": request?.id.toString() ?? "0",
      'name': request?.name.toString() ?? "",
      'dni': request?.dni.toString() ?? "",
      'reason': request?.reason.toString() ?? "",
      'description': request?.description.toString() ?? "",
      'type': request?.type.toString() ?? "SIAU",
      'registerdate': request?.registerdate.toString() ?? "",
      'career': request?.career.toString() ?? "Software",
      'phonecontact': request?.phonecontact.toString() ?? "",
      'scorereply': request?.scorereply ?? 1,
      'active': request?.active ?? false,
    };
    final requestProvider = Provider.of < RequestsProvider > (context);
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
                padding: const EdgeInsets.all(8.0), child: const Text('Formulario')),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(children: [
                CustomInputField(
                  formProperty: 'name',
                  formValues: myFormValues,
                  labelText: 'Solicitante',
                  hintText: 'Insertar su nombre',
                  helperText: 'Solo mayusculas',
                  initialText: myFormValues["name"],
                  autofocus: true,
                  icon: Icons.people),
                CustomInputField(
                  formProperty: 'reason',
                  formValues: myFormValues,
                  labelText: 'Razón',
                  hintText: 'Insertar la razón',
                  initialText: myFormValues["reason"],
                  helperText: '',
                  icon: Icons.read_more_sharp),
                CustomInputField(
                  formProperty: 'description',
                  formValues: myFormValues,
                  labelText: 'Descripción',
                  hintText: 'Insertar descripción',
                  initialText: myFormValues["description"],
                  helperText: '',
                  icon: Icons.connect_without_contact_rounded,
                ),
                CustomInputField(
                  formProperty: 'dni',
                  formValues: myFormValues,
                  labelText: 'Cedula',
                  hintText: 'Inserte la cedula',
                  helperText: '',
                  initialText: myFormValues["dni"],
                  icon: Icons.perm_identity
                ),
                CustomInputField(
                  formProperty: 'phonecontact',
                  formValues: myFormValues,
                  labelText: 'Contacto',
                  hintText: 'Insertar telefono de contacto',
                  helperText: '',
                  initialText: myFormValues["phonecontact"],
                  icon: Icons.card_travel_outlined),

                CustomInputField(
                  formProperty: 'registerdate',
                  formValues: myFormValues,
                  labelText: 'Fecha',
                  hintText: 'YY-MM-DD',
                  helperText: 'YY-MM-DD',
                  initialText: myFormValues["registerdate"],
                  icon: Icons.calendar_month),

                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Column(
                    children: [
                      DropdownButtonFormField < String > (

                        icon: const Icon(Icons.card_travel_outlined,color: AppTheme.primary,),
                          items: const [
                            DropdownMenuItem(value: 'Software', child: Text('Desarrollo de software')),
                            DropdownMenuItem(value: 'Agronomia', child: Text('Agronomia')),
                          ],
                          value: myFormValues["career"],
                          onChanged: (value) {
                            myFormValues['career'] = value;
                          }),
                          const SizedBox(height: 9.7),
                      DropdownButtonFormField < String > (

                        icon: const Icon(Icons.description,color: AppTheme.primary,),
                          items: const [
                            DropdownMenuItem(value: 'SIAU', child: Text('SIAU')),
                            DropdownMenuItem(value: 'SIGA', child: Text('SIGA')),
                          ],
                          value: myFormValues["type"],
                          onChanged: (value) {
                            myFormValues['type'] = value;
                          }),
                          const SizedBox(height: 9.7),
                      DropdownButtonFormField < bool > (

                        icon: const Icon(Icons.disc_full_outlined,color: AppTheme.primary,),
                          items: const [
                            DropdownMenuItem(value: true, child: Text('activo')),
                            DropdownMenuItem(value: false, child: Text('desactivo')),
                          ],
                          value: myFormValues["active"],
                          onChanged: (value) {
                            myFormValues['active'] = value;
                          }),
                      const SizedBox(height: 9.7),
                        DropdownButtonFormField < int > (
                          icon: const Icon(Icons.local_activity, color: AppTheme.primary,),
                            items: const [
                              DropdownMenuItem(value: 4, child: Text('Excelente')),
                              DropdownMenuItem(value: 3, child: Text('Bien')),
                              DropdownMenuItem(value: 2, child: Text('Mal')),
                              DropdownMenuItem(value: 1, child: Text('Muy mal')),
                            ],
                            value: myFormValues["scorereply"],
                            onChanged: (value) {
                              myFormValues['scorereply'] = value;
                            }),
                            const SizedBox(height: 9.7),
                    ],
                  ),
                ),

                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      'request-list',
                    );
                    if (myFormValues["id"] != "0") {
                      requestProvider.updateRequest(myFormValues);
                      const snackBar = SnackBar(
                        content: Text('Solicitud Actualizada'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      requestProvider.createRequest(myFormValues);
                      const snackBar = SnackBar(
                        content: Text('Solicitud Registrada'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Icon(Icons.save))
                // const SizedBox(height: 9.7),
              ]),
            ),
        ),
      ));
  }
}