// import 'package:flutter/material.dart';
// import 'package:structure_flutter/component/constants/colors.dart';
//
// import '../../component/models/user.dart';
// import '../../component/serviecs/auth_serviecs/dio_client.dart';
//
// class FetchUser extends StatefulWidget {
//   const FetchUser({Key? key}) : super(key: key);
//
//   @override
//   _FetchUserState createState() => _FetchUserState();
// }
//
// class _FetchUserState extends State<FetchUser> {
//   final TextEditingController _AuthorController = TextEditingController();
//   final DioClient _client = DioClient();
//
//   bool _isFetching = false;
//   bool _isDeleting = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue.shade50,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             Flexible(
//               child: TextField(
//                 controller: _AuthorController,
//                 decoration: const InputDecoration(hintText: 'Enter ID'),
//               ),
//             ),
//             const SizedBox(width: 16.0),
//             _isFetching
//                 ? const CircularProgressIndicator()
//                 : ElevatedButton(
//                     onPressed: () async {
//                       setState(() {
//                         _isFetching = true;
//                       });
//
//                       User? user = await _client.getData(
//                         id: _AuthorController.text,
//                       );
//
//                       if (user != null) {
//                         showDialog(
//                           context: context,
//                           builder: (context) => Dialog(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Image.network(user.data.avatar),
//                                     Text('ID: ${user.data.id}'),
//                                     Text(
//                                       'Name: ${user.data.firstName} ${user.data.lastName}',
//                                     ),
//                                     Text('Email: ${user.data.email}'),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       }
//
//                       setState(() {
//                         _isFetching = false;
//                       });
//                     },
//                     style: ElevatedButton.styleFrom(primary: kTextPrimaryColor),
//                     child: const Text('Fetch'),
//                   ),
//             const SizedBox(width: 16.0),
//             _isDeleting
//                 ? const CircularProgressIndicator()
//                 : ElevatedButton(
//                     onPressed: () async {
//                       setState(() {
//                         _isDeleting = true;
//                       });
//                       await _client.deleteUser(id: _AuthorController.text);
//                       final snackBar = SnackBar(
//                         content: Text(
//                           'User at id ${_AuthorController.text} deleted!',
//                           style: const TextStyle(fontSize: 20.0),
//                         ),
//                       );
//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//
//                       setState(() {
//                         _isDeleting = false;
//                       });
//                     },
//                     style: ElevatedButton.styleFrom(primary: Colors.red),
//                     child: const Text('Delete'),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }
