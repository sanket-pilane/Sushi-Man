// import 'package:flutter/material.dart';
// import 'package:shushii_restarount_app/src/constants/constants.dart';
// import 'package:shushii_restarount_app/src/features/auth/components/divider.dart';
// import 'package:shushii_restarount_app/src/features/auth/components/square_tile.dart';
// import 'package:shushii_restarount_app/src/widgets/custome_textfielad.dart';
// import 'package:shushii_restarount_app/src/widgets/frosted_glass.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   void dispose() {
//     super.dispose();
//     usernameController.dispose();
//     passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           // color: kPrimaryColor,
//           image: DecorationImage(
//             image: AssetImage(kBg2Image),
//             fit: BoxFit.cover,
//           ),
//         ),
//         alignment: Alignment.center,
//         child: FrostedGlassBox(
//             theWidth: width * 0.9,
//             theHeight: height * 0.7,
//             theChild: loginMethod(context)),
//       ),
//     );
//   }

//   Column loginMethod(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         SizedBox(
//           height: 20,
//         ),
//         Icon(
//           Icons.lock,
//           color: Colors.white,
//           size: 60,
//         ),
//         CustomeTextField(
//           hintText: "Username",
//           icon: Icon(Icons.person),
//           controller: usernameController,
//         ),
//         CustomeTextField(
//           hintText: "Password",
//           icon: Icon(Icons.lock),
//           controller: passwordController,
//           obscureText: true,
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           width: width * 0.7,
//           padding: EdgeInsets.symmetric(vertical: 15),
//           decoration: BoxDecoration(
//               color: Colors.black, borderRadius: BorderRadius.circular(30)),
//           child: Center(
//             child: Text(
//               "Login",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         CustomeDivider(),
//         SquareTile(),
//         Spacer(),
//         Padding(
//           padding: const EdgeInsets.only(bottom: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text(
//                 "Don't have an Acount?",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               Text(
//                 "Register Here",
//                 style: TextStyle(
//                   color: Colors.blue,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
