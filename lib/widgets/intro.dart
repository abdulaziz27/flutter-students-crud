// import 'package:intro_views_flutter/Models/page_view_model.dart';
// import 'package:intro_views_flutter/intro_views_flutter.dart';

// part of 'uis.dart';

// class IntroPage extends StatefulWidget {
//   IntroPage({Key key}) : super(key: key);

//   @override
//   _IntroPageState createState() => _IntroPageState();
// }

// class _IntroPageState extends State<IntroPage> {
//   final pages = [
//     PageViewModel(
//         pageColor: const Color(0xFF03A9F4),
//         // iconImageAssetPath: 'assets/air-hostess.png',
//         bubble: Image.asset('assets/air-hostess.png'),
//         body: Text(
//           'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
//         ),
//         title: Text(
//           'Flights',
//         ),
//         titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
//         bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
//         mainImage: Image.asset(
//           'assets/airplane.png',
//           height: 285.0,
//           width: 285.0,
//           alignment: Alignment.center,
//         )),
//     PageViewModel(
//       pageColor: const Color(0xFF8BC34A),
//       iconImageAssetPath: 'assets/waiter.png',
//       body: Text(
//         'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
//       ),
//       title: Text('Hotels'),
//       mainImage: Image.asset(
//         'assets/hotel.png',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//       titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
//     ),
//     PageViewModel(
//       pageColor: const Color(0xFF607D8B),
//       iconImageAssetPath: 'assets/taxi-driver.png',
//       body: Text(
//         'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
//       ),
//       title: Text('Cabs'),
//       mainImage: Image.asset(
//         'assets/taxi.png',
//         height: 285.0,
//         width: 285.0,
//         alignment: Alignment.center,
//       ),
//       titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
//       bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'IntroViews Flutter', //title of app
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ), //ThemeData
//       home: Builder(
//         builder: (context) => IntroViewsFlutter(
//           pages,
//           showNextButton: true,
//           showBackButton: true,
//           onTapDoneButton: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => HomePage(),
//               ), //MaterialPageRoute
//             );
//           },
//           pageButtonTextStyles: TextStyle(
//             color: Colors.white,
//             fontSize: 18.0,
//           ),
//         ), //IntroViewsFlutter
//       ), //Builder
//     ); //Material App
//   }
// }
