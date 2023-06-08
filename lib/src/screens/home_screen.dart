import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool attestation = true;
  double result = 0;
  TextEditingController grades1 = TextEditingController();
  TextEditingController atten1 = TextEditingController();
  TextEditingController test1 = TextEditingController();
  TextEditingController grades2 = TextEditingController();
  TextEditingController atten2 = TextEditingController();
  TextEditingController test2 = TextEditingController();
  TextEditingController finalExam = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var widthOfDevice = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Grade Counter'),
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: widthOfDevice > 500?attestation?Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CupertinoButton.filled( 
                        disabledColor: Colors.blue.shade200,
                        onPressed: (){
                          setState(() {
                            attestation = true;
                          });
                        },
                        child: const Text('Аттестация'),
                      ),
                    ),
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CupertinoButton.filled( 
                        disabledColor: Colors.blue.shade50,
                        onPressed: (){
                          setState(() {
                            attestation = false;
                          });
                        },
                        child: const Text('Семестр'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ 
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                          placeholder: 'Ағымдағы бағалар 1:',
                          controller: grades1,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 1:',
                        controller: atten1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 1:',
                        controller: test1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бағалар 2:',
                        controller: grades2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 2:',
                        controller: atten2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 2:',
                        controller: test2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CupertinoButton.filled(
                      onPressed: (){
                        setState(() {
                          result = ((double.parse(grades1.text) * 12) + (double.parse(grades2.text) * 12) + (double.parse(test1.text) * 15) + (double.parse(test2.text) * 15) + (double.parse(atten1.text) * 3) + (double.parse(atten2.text) * 3)) / 60 ;
                        });
                      }, 
                      child: const Text('Count')
                    )
                    ]
                  ),
                  const SizedBox(height: 20,),
                  Text('Your grade is: ${result.toString()}', style: const TextStyle(fontSize: 28),)
              ],
            ):
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CupertinoButton.filled( 
                        disabledColor: Colors.blue.shade200,
                        onPressed: (){
                          setState(() {
                            attestation = true;
                          });
                        },
                        child: const Text('Аттестация'),
                      ),
                    ),
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CupertinoButton.filled( 
                        disabledColor: Colors.blue.shade50,
                        onPressed: (){
                          setState(() {
                            attestation = false;
                          });
                        },
                        child: const Text('Семестр'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ 
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                          placeholder: 'Ағымдағы бағалар 1:',
                          controller: grades1,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 1:',
                        controller: atten1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 1:',
                        controller: test1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бағалар 2:',
                        controller: grades2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 2:',
                        controller: atten2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 2:',
                        controller: test2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Емтихан немесе Сынақ:',
                        controller: finalExam,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CupertinoButton.filled(
                      onPressed: (){
                        setState(() {
                          result = ((double.parse(grades1.text) * 12) + (double.parse(grades2.text) * 12) + (double.parse(test1.text) * 15) + (double.parse(test2.text) * 15) + (double.parse(atten1.text) * 3) + (double.parse(atten2.text) * 3) + (double.parse(finalExam.text) * 40)) / 100 ;
                        });
                      }, 
                      child: const Text('Count')
                    )
                    ]
                  ),
                  const SizedBox(height: 20,),
                  Text('Your grade is: ${result.toString()}', style: const TextStyle(fontSize: 28),),
              ],
                  ):
                  attestation?Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                          child: CupertinoButton.filled( 
                            disabledColor: Colors.blue.shade200,
                            onPressed: (){
                              setState(() {
                                attestation = true;
                              });
                            },
                            child: const Text('Аттестация'),
                          ),
                      ),
                    Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        child: CupertinoButton.filled( 
                          disabledColor: Colors.blue.shade50,
          
                          onPressed: (){
                            setState(() {
                              attestation = false;
                            });
                          },
                          child: const Text('Семестр'),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ 
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                          placeholder: 'Ағымдағы бағалар 1:',
                          controller: grades1,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 1:',
                        controller: atten1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 1:',
                        controller: test1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бағалар 2:',
                        controller: grades2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 2:',
                        controller: atten2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 2:',
                        controller: test2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CupertinoButton.filled(
                      onPressed: (){
                        setState(() {
                          result = ((double.parse(grades1.text) * 12) + (double.parse(grades2.text) * 12) + (double.parse(test1.text) * 15) + (double.parse(test2.text) * 15) + (double.parse(atten1.text) * 3) + (double.parse(atten2.text) * 3)) / 60 ;
                        });
                      }, 
                      child: const Text('Count')
                    )
                    ]
                  ),
                  const SizedBox(height: 20,),
                  Text('Your grade is: ${result.toString()}', style: const TextStyle(fontSize: 22),)
              ],
            ):
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                      child: CupertinoButton.filled( 
                        disabledColor: Colors.blue.shade200,
                        onPressed: (){
                          setState(() {
                            attestation = true;
                          });
                        },
                        child: const Text('Аттестация'),
                      ),
                    ),
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                      child: CupertinoButton.filled( 
                        disabledColor: Colors.blue.shade50,
                        onPressed: (){
                          setState(() {
                            attestation = false;
                          });
                        },
                        child: const Text('Семестр'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ 
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                          placeholder: 'Ағымдағы бағалар 1:',
                          controller: grades1,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 1:',
                        controller: atten1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 1:',
                        controller: test1,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бағалар 2:',
                        controller: grades2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Сабаққа қатысуы 2:',
                        controller: atten2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Ағымдағы бақылау 2:',
                        controller: test2,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CupertinoTextField(
                        placeholder: 'Емтихан немесе Сынақ:',
                        controller: finalExam,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CupertinoButton.filled(
                      onPressed: (){
                        setState(() {
                          result = ((double.parse(grades1.text) * 12) + (double.parse(grades2.text) * 12) + (double.parse(test1.text) * 15) + (double.parse(test2.text) * 15) + (double.parse(atten1.text) * 3) + (double.parse(atten2.text) * 3) + (double.parse(finalExam.text) * 40)) / 100 ;
                        });
                      }, 
                      child: const Text('Count')
                    )
                    ]
                  ),
                  const SizedBox(height: 20,),
                  Text('Your grade is: ${result.toString()}', style: const TextStyle(fontSize: 22),),
              ],
                  ),
          ),
      ),
    )
    );
  }
}