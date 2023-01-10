import 'package:flutter/material.dart';
import 'package:hometraining/main.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (_,i){
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Text(
                        "HomeTraining",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "질문1 : 당신의 성별은? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),

                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed:(){},
                child: const Text('남자'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    minimumSize: Size(200,100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)

                    )
                ),
              ),
              ElevatedButton(
                onPressed:(){},
                child: const Text('여자'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    minimumSize: Size(200,100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ],
            // height: 60,
            // margin: EdgeInsets.all(40),
            // width: double.infinity,
            // child: FlatButton(
            //   child: Text("남자"),
            //   onPressed: (){},
            //   color: Theme.of(context).primaryColor,
            //   textColor: Colors.white,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20)
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}


// class OnBoardingPage extends StatelessWidget {
//   const OnBoardingPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       pages: [
//         PageViewModel(
//           title: 'Welcome to HomeTraining',
//           body: '질문 1'
//           footer: ButtonWidget(
//
//           ),
//         ),
//         PageViewModel(
//             title: 'Welcome to HomeTraining',
//             body: '질문 2'
//         ),
//         PageViewModel(
//             title: 'Welcome to HomeTraining',
//             body: '질문 3'
//         ),
//         PageViewModel(
//             title: 'Welcome to HomeTraining',
//             body: '질문 4'
//
//         ),
//       ],
//       done: const Text('done'),
//       onDone: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(builder: (context) => MyPage()),
//         );
//       },
//       next: const Icon(Icons.arrow_forward),
//     );
//   }
//
//   PageDecoration getPageDecoration(){
//     return const  PageDecoration(
//       titleTextStyle: TextStyle(
//         fontSize: 28,
//         fontWeight: FontWeight.bold
//       ),
//       bodyTextStyle: TextStyle(
//         fontSize: 18,
//         color: Colors.blue
//       ),
//     );
//   }
// }
