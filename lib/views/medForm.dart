// import 'package:TiMed/models/remedio.dart';
// import 'package:TiMed/provider/remedios.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class RemedioForm extends StatefulWidget {
//   @override
//   _RemedioFormState createState() => _RemedioFormState();
// }

// class _RemedioFormState extends State<RemedioForm> {
//   final _formKey = GlobalKey<FormState>();
//   final Map<String, String> _formData = {};
//   void _loadFormData(Remedio remedio) {
//     if (remedio != null) {
//       _formData['id'] = remedio.id;
//       _formData['name'] = remedio.name;
//     }
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();

//     final Remedio remedio = ModalRoute.of(context)!.settings.arguments as Remedio;
//     _loadFormData(remedio);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cadastro de Usuários'),
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(Icons.save),
//               onPressed: () {
//                 final isValid = _formKey.currentState!.validate();
//                 if (isValid) {
//                   _formKey.currentState!.save();
//                   Provider.of<Remedios>(context, listen: false).put(
//                     Remedio(
//                       id: _formData['id'] ?? "",
//                       name: _formData['name'] ?? "",
//                       hour: TimeOfDay(hour:0,minute:0),
//                     ),
//                   );
//                   Navigator.of(context).pop();
//                 }
//               }),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 initialValue: _formData['name'],
//                 decoration: InputDecoration(labelText: 'Nome'),
//                 validator: (value) {
//                   if (value!.trim().isEmpty) {
//                     return 'Campo não pode ser vazio';
//                   }
//                   if (value!.trim().length < 3) {
//                     return 'Não pode ser menor que 3 caracteres.';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _formData['name'] = value ?? "",
//               ),
//               // TextFormField(
//               //   initialValue: _formData['email'],
//               //   decoration: InputDecoration(labelText: 'Email'),
//               //   onSaved: (value) => _formData['email'] = value,
//               // ),
//               // TextFormField(
//               //   initialValue: _formData['avatarUrl'],
//               //   decoration: InputDecoration(labelText: 'URL do Avatar'),
//               //   onSaved: (value) => _formData['avatarUrl'] = value,
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }