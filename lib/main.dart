import 'package:flutter/material.dart';
import 'package:hometraining/config/palette.dart';
import 'package:hometraining/home.dart';

void main() {
  runApp(new MaterialApp(
    title: "Page Navigation",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("질문 1 : 당신의 성별은? ")),
      body: Row(
        children: [
          Center(
            child: SizedBox(
              height: 50.0,
              width: 150.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secondpage()));
                },
                child: Text('남자'),
                color: Colors.blueAccent,
                textColor: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 100),
          Center(
            child: SizedBox(
              height: 50.0,
              width: 150.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secondpage()));
                },
                child: Text('여자'),
                color: Colors.redAccent,
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("질문 2 : 당신의 이름은? ")),
      body: Column(
        children: [
          SizedBox(height: 150),
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.textColor1),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            )),
          ),
          SizedBox(height: 100),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Thirdpage()));
            },
            child: Text('다음'),
          ),
        ],
      ),
    );
  }
}

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  DateTime date = DateTime(2022, 04, 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("질문 3 : 당신의 생년월일은? ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${date.year}/${date.month}/${date.day}',
                style: TextStyle(fontSize: 30)),
            const SizedBox(height: 16),
            ElevatedButton(
                child: Text('날짜를 입력하시오.'),
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );

                  if (newDate == null) return;

                  setState(() => date = newDate);
                }),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Forthpage()));
              },
              child: Text('다음'),
            ),
          ],
        ),
      ),
    );
  }
}

class Forthpage extends StatelessWidget {
  const Forthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("질문 4 : 당신의 체중은? ")),
      body: Column(
        children: [
          SizedBox(height: 150),
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.textColor1),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            )),
          ),
          SizedBox(height: 100),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Fifthpage()));
            },
            child: Text('다음'),
          ),
        ],
      ),
    );
  }
}

class Fifthpage extends StatelessWidget {
  const Fifthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("질문 5 : 주된 목표는? ")),
      body: Column(
        children: [
          SizedBox(
            height: 150.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sixthpage()));
              },
              child: Text('체중 감량'),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 150.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sixthpage()));
              },
              child: Text('근육 키우기'),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 150.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sixthpage()));
              },
              child: Text('건강 유지'),
            ),
          ),
        ],
      ),
    );
  }
}

class Sixthpage extends StatelessWidget {
  const Sixthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("질문 6 : 집중할 부위는? "),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('팔'),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('가슴'),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('복근'),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('다리'),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100.0,
            width: 500.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('전신'),
            ),
          ),
        ],
      ),
    );
  }
}
