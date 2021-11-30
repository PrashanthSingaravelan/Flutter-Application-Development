// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import "constants.dart";
// import 'main.dart';
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key, this.title}) : super(key: key);
//   final title;
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   late String email, password;
//   Widget _buildLogo() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 70),
//           child: Text(
//             'Easy Tap',
//             style: TextStyle(
//               fontSize: MediaQuery.of(context).size.height / 25,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildEmailRow() {
//     return Padding(
//       padding: EdgeInsets.all(8),
//       child: TextFormField(
//         keyboardType: TextInputType.emailAddress,
//         onChanged: (value) {
//           setState(() {
//             email = value;
//           });
//         },
//         decoration: InputDecoration(
//             prefixIcon: Icon(
//               Icons.email,
//               color: mainColor,
//             ),
//             labelText: 'E-mail'),
//       ),
//     );
//   }
//
//   Widget _buildPasswordRow() {
//     return Padding(
//       padding: EdgeInsets.all(8),
//       child: TextFormField(
//         keyboardType: TextInputType.text,
//         obscureText: true,
//         onChanged: (value) {
//           setState(() {
//             password = value;
//           });
//         },
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             Icons.lock,
//             color: mainColor,
//           ),
//           labelText: 'Password',
//         ),
//       ),
//     );
//   }
//
//   Widget _buildForgetPasswordButton() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         FlatButton(
//           onPressed: () {},
//           child: Text("Forgot Password"),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildLoginButton() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           height: 1.4 * (MediaQuery.of(context).size.height / 20),
//           width: 5 * (MediaQuery.of(context).size.width / 10),
//           margin: EdgeInsets.only(bottom: 20),
//           child: RaisedButton(
//             elevation: 5.0,
//             color: mainColor,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//             onPressed: () {
//
//               Navigator.pushNamed(
//                 context,
//                 '/home',
//                 arguments: ScreenArguments(
//                   'Translated',
//                   "..",),
//               );
//
//             },
//             child: Text(
//               "Login",
//               style: TextStyle(
//                 color: Colors.white,
//                 letterSpacing: 1.5,
//                 fontSize: MediaQuery.of(context).size.height / 40,
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildOrRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           margin: EdgeInsets.only(bottom: 20),
//           child: Text(
//             '- OR -',
//             style: TextStyle(
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildSocialBtnRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         GestureDetector(
//           onTap: () {},
//           child: Container(
//             height: 60,
//             width: 60,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: mainColor,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black26,
//                     offset: Offset(0, 2),
//                     blurRadius: 6.0)
//               ],
//             ),
//             child: Icon(
//               FontAwesomeIcons.google,
//               color: Colors.white,
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildContainer() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ClipRRect(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20),
//           ),
//           child: Container(
//             height: MediaQuery.of(context).size.height * 0.6,
//             width: MediaQuery.of(context).size.width * 0.8,
//             decoration: BoxDecoration(
//               color: Colors.white,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Login",
//                       style: TextStyle(
//                         fontSize: MediaQuery.of(context).size.height / 30,
//                       ),
//                     ),
//                   ],
//                 ),
//                 _buildEmailRow(),
//                 _buildPasswordRow(),
//                 _buildForgetPasswordButton(),
//                 _buildLoginButton(),
//                 _buildOrRow(),
//                 _buildSocialBtnRow(),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildSignUpBtn() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(top: 40),
//           child: FlatButton(
//             onPressed: () {},
//             child: RichText(
//               text: TextSpan(children: [
//                 TextSpan(
//                   text: 'Dont have an account? ',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: MediaQuery.of(context).size.height / 40,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 TextSpan(
//                   text: 'Sign Up',
//                   style: TextStyle(
//                     color: mainColor,
//                     fontSize: MediaQuery.of(context).size.height / 40,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )
//               ]),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//  //   final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Color(0xfff2f3f7),
//         appBar: AppBar(
//           title: Text(args.title),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height * 0.7,
//               width: MediaQuery.of(context).size.width,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: mainColor,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: const Radius.circular(70),
//                     bottomRight: const Radius.circular(70),
//                   ),
//                 ),
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 _buildLogo(),
//                 _buildContainer(),
//                 _buildSignUpBtn(),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }