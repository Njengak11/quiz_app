import 'package:flutter/material.dart';
import 'models/questions.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){ 
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {

  List<Question> question = [
    Question("Jomo Kenyatta was the first president of Kenya ?",true),
    Question('Can pigs fly ?',false),
    Question('Is Bill gate the founder of MicroSoft ?',true),
    Question('Is the Serengeti in Kenya ?',false),
    Question('Do dogs only bark at night ?',false),
    Question('Are cats better than dogs ?',true),
  ];

  int questionIndex = 0;
  String answer = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      home: Scaffold( 
        backgroundColor: Colors.white,
        body: Column(children: [
          Container( 
            height: 600,
            color: Colors.white,
            child: Padding( 
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                       padding: EdgeInsets.only(right: 250),             
                                      child: Text('Question #${questionIndex+1}',
                     style: TextStyle( 
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                        ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                          padding: EdgeInsets.only(right: 80),
                           child: Text(question[questionIndex].question,
                     style: TextStyle( 
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    answer,
                   style: TextStyle( 
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: answer == "correct!" ? Colors.green : Colors.red,
                      ),
                  ),
                ],),
            ),
          ),
          Expanded( 
            child: Row(
              children: [
              Expanded( 
                child: GestureDetector( 
                  onTap: (){ 
                    if (question[questionIndex].answer == true){ 
                      setState(() {
                        questionIndex++;
                        answer = "correct!";
                      });
                    }else{
                      setState(() {
                        questionIndex++;
                        answer = "wrong!";
                      });
                    }
                  },
                  child: Container( 
                    color: Colors.green,
                    child: Align( 
                      alignment: Alignment.center,
                      child: Text('true',
                      style: TextStyle( 
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ),
                ),
              ),
               Expanded( 
                child: GestureDetector( 
                  onTap: (){
                    if (question[questionIndex].answer == false){ 
                      setState(() {
                        questionIndex++;
                        answer = "correct!";
                      });
                    }else{
                      setState(() {
                        questionIndex++;
                        answer = "wrong!";
                      });
                    }
                  },
                  child: Container( 
                    color: Colors.red,
                    child: Align( 
                      alignment: Alignment.center,
                      child: Text('false',
                       style: TextStyle( 
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ),
            ],
            ),
          )
        ],),
      ),
    );
  }
}


