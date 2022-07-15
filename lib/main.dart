import 'package:bytcrm_screen_ui/module/home/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const HomeScreen(),
    );
  }
}

// +++++++++++++++++pageview++++++++++++++++++++++++++++++

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Page View Demo"),
//         ),
//         body: const PageViewState(),
//       ),
//     );
//   }
// }

class PageViewState extends StatelessWidget {
  const PageViewState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const [
        Center(
          child: Text("Hello!"),
        ),
        Center(child: Text("Hi")),
        Center(
          child: Text("Friday"),
        ),
      ],
    );
  }
}
