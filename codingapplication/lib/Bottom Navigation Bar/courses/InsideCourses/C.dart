import 'package:codingapplication/ReusableCode/TextTiles.dart';
import 'package:codingapplication/ReusableCode/curve.dart';
import 'package:codingapplication/ReusableCode/drawer.dart';
import 'package:codingapplication/ReusableCode/text.dart';
import 'package:flutter/material.dart';
import '../../../ReusableCode/appbar.dart';

class C extends StatelessWidget {
  final List name=[
    'What is C','Features','Importance of C','History of C','Real Life Examples','Merits','Demerits','Tokens',
    'How to Setup C in Windows using Dev C++','Basic Syntax of C','Console Window','Compilation/Runtime Process','main/void function','Header Files and its types',
    '<conio.h> header file','Preprocessor Directives','Data-types and its types','Variables and Constant','Scope of Variables','Literals','Different'
    'Symbols','Input/Output Statement','Format Specifier','Operators','Address and Dot Operator','Comments','Keywords','Special Keywords','Identifiers','Functions and its'
    'types','Recursion','Call by Value','Call by Reference','Escape Sequence Character','ASCII Value','Type Casting','Conditional','Statements(if,else,switch)',
    'Conditional operators','Loops','Jumping Statements','Array and its types','Strings and its types','Structure','Union','D/W Structure and Union','Pointers',
    'Pointer Functions','Array Pointers','Enum','Storage Classes','Memory Management','File Handling','Error Handling','Command Line Arguments','Bit-Fields',
    'Bitfields Overflow','Union Data Corruption','Structure padding and pitfalls','programming modals','printing every bytes of Integer'
  ];
  final List leading=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,
    52,53,54,55,56,57,58,59,60,61,62,63];

  final List color=[
    Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,
    Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,Colors.purpleAccent,
    Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.redAccent,
    Colors.orangeAccent,Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent,Colors.blueAccent,
    Colors.indigo,Colors.pinkAccent,Colors.redAccent,Colors.orangeAccent,Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,
    Colors.purple,Colors.pinkAccent, Colors.purpleAccent,Colors.deepPurple,Colors.indigo,Colors.pink,Colors.greenAccent,Colors.purple,Colors.pinkAccent, Colors.purple
    ,Colors.pinkAccent, Colors.purpleAccent,Colors.deepPurple,Colors.blueAccent,Colors.indigo,Colors.pinkAccent,Colors.blueAccent,
  ];
  C({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const drawer(),
        //Drawer End
        appBar: AppBar(
          flexibleSpace:appbar(text: 'JCA', callback: () { Navigator.pop(context); },),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const curve(),
              //Heading Name
              const Center(child: text(name: 'C Language',fontWeight: FontWeight.bold,size: 40,color: Colors.pinkAccent,)),

             expansionTile(
                 text: '1. C is an procedural language and High Level Language.\n'
                       '2. It is created by Dennis Richie in 1972 at AT&BELL Laboratory in California.\n'
                       '3. C is carry basic concept of programming for creation of different-different programs or source codes\n'
                       '4. There are various keywords,variables,conditional statements,functions,tokens,... are used in C for solving complex and different tasks.\n'
                       '5. C support different compilers for converting source code to machine code.'
                 ,leadingNumber: '1',collapsedBackgroundColor:color[1], titleBackgroundColor:color[61], tileName:name[0]
             ),
              expansionTile(
                  text: '1. Beginner Friendly:\n'
                        'C is an beginner friendly language because it gives simple code structure and various functionality for writing source code with formatting.\n'
                        '2. Dynamic Memory Allocation:\n'
                        'C gives dynamic memory allocation support for users to change memory or give memory on runtime.\n'
                        '3. Compilation process:\n'
                        'C support compilation process it means checking whole code at a time and give errors and warnings if any type of mistakes are happened in code.\n'
                        '4. Fast Speed:\n'
                        'There are different types of programming languages are run in market but few programming languages gives fast speed for executing source code to '
                      'machine code at runtime.\n'
                        '5. Portability:\n'
                        'C support portability, it means C source code run on windows,mac,linux and other operating systems.'
                  ,leadingNumber: '2',collapsedBackgroundColor:color[2], titleBackgroundColor:color[60], tileName:name[1]
              ),
              expansionTile(
                  text: '1. Efficiency: C allows for direct memory manipulation and low-level access to system resources.This results in highly efficient code execution.\n'
                        '2. Portability: C code can be easily ported to different platforms without major modifications, thanks to its '
                        'wide availability of compilers and libraries.\n'
                        '3. Speed: C is known for its fast execution speed, making it suitable for developing performance-critical applications.\n'
                        '4. Control: C gives programmers fine-grained control over memory management and system resources.\n'
                        '5. Compatibility: C code can be easily integrated with code written in other languages like C++, Java, and Python.\n'
                  ,leadingNumber: '3',collapsedBackgroundColor:color[3], titleBackgroundColor:color[59], tileName:name[2]
              ),
              expansionTile(
                  text: 'The C programming language’s history can be traced to Dennis Ritchie, who developed it at Bell Labs in the early 1970s. '
                      'It evolved from an earlier language called B, which was developed by Ken Thompson. B itself was based on the BCPL language.\n'
                      'C gained popularity due to its portability and efficiency. In 1978, Brian Kernighan and Dennis Ritchie published “The C Programming Language,” '
                      'which became the go-to reference for C programmers. Since then, C has been widely used and has influenced the development of other programming '
                      'languages.'
                  ,leadingNumber: '4',collapsedBackgroundColor:color[4], titleBackgroundColor:color[58], tileName:name[3]
              ),
              expansionTile(
                  text: 'Operating systems: C is extensively used in developing operating systems like Windows, Linux, and macOS.\n'
                  'Embedded systems: C is the language of choice for developing firmware and software for various embedded systems,'
                  'such as microcontrollers and IoT devices.\n'
                  'System Utilities: Many system utilities, such as text editors, compilers, and interpreters, are written in C.\n'
                  'Game development: C is used to develop games due to its ability to handle complex calculations and graphics.\n'
                  'Database systems: The core components of databases and their management systems are often built using C.\n'
                  'Networking: C is used for developing network protocols and applications.'
                  ,leadingNumber: '5',collapsedBackgroundColor:color[5], titleBackgroundColor:color[57], tileName:name[4]
              ),
              expansionTile(
                  text: 'Modularity: C supports modular programming, allowing developers to break down complex programs into smaller, manageable modules for easier '
                      'development and maintenance.\n'
                      'Wide community support: C has a large and active development community, making it easy to find resources, libraries, and support online.\n'
                      'Skill transferability: Once you learn C, it becomes easier to learn other programming languages since many languages, including C++, are based on C.\n'
                  ,leadingNumber: '6',collapsedBackgroundColor:color[6], titleBackgroundColor:color[56], tileName:name[5]
              ),
              expansionTile(
                  text: 'Complexity: C can be difficult to learn for beginners due to its low-level nature and the need to understand concepts like pointers and'
                      ' memory management.\n'
                      'Lack of safety features: C does not have built-in features like garbage collection, which can lead to memory leaks and other runtime errors if '
                      'not managed properly.\n'
                      'Vulnerabilities: The low-level nature of C makes it prone to security vulnerabilities like buffer overflows if not correctly handled by the '
                      'programmer.'
                  ,leadingNumber: '7',collapsedBackgroundColor:color[7], titleBackgroundColor:color[55], tileName:name[6]
              ),
              expansionTile(
                  text: 'Every Individuals smallest unit or meaningful to the compiler is called Tokens.\n'
                      'Example:Keywords,Identifiers,Constants,Strings,Special Symbols,Operators'
                  ,leadingNumber: '8',collapsedBackgroundColor:color[8], titleBackgroundColor:color[54], tileName:name[7]
              ),
              Padding(
            padding: const EdgeInsets.all(10.0),
            child: ExpansionTile(title:
            Text(name[8],style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
                leading:const Text('9',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyanAccent
                ),),
                // backgroundColor:color[53],
                backgroundColor: Colors.black87,
                // collapsedBackgroundColor:color[9],
                collapsedBackgroundColor: Colors.black,
                iconColor: Colors.cyanAccent,
                shape: RoundedRectangleBorder(
                    side:const BorderSide(color:Colors.black87),
                    borderRadius: BorderRadius.circular(20)
                ),

                collapsedShape: RoundedRectangleBorder(
                    side:const BorderSide(color:Colors.black87),
                    borderRadius: BorderRadius.circular(20)
                ),
                collapsedIconColor: Colors.white,
                tilePadding: const EdgeInsets.all(30),
                textColor: Colors.white,
                children:[
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step1:Open any browser;search (Dev C++ download) and goto Source Forge Website.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang1.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step2:Click Download button.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child:Padding( padding: const EdgeInsets.all(10.0),child: ClipRRect(borderRadius: BorderRadius.circular(13),child: Image.asset('assets/Images/c_lang2.png'))),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step3:Wait 5 seconds until downloading will be start.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang3.png'),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang4.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step4:After download dev c++ double click on setup in download folder.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step5:Choose language(By default:English).'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang5.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step6:Click IAgree(Agreement).\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang6.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step7:In choose components page click next.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang7.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step8:Choose files installation path,then click install.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang8.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step9:Wait until installation is completed.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang9.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step10:Click on finish after installing files.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang10.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step11:Click on file,then new,and lastly on source file.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang11.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step12:Goto files option and click SaveAs.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Step13:After SaveAs select location of files path and save file must be (.c),then click on save button.\n\n'
                      ,style:TextStyle(fontSize: 20,color: Colors.cyanAccent),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang12.png'),
                  ),
                  Center(
                    child: Image.asset('assets/Images/c_lang13.png'),
                  ),
                ]
            ),
            ),

              // Basic Syntax of C
              expansionTile(
                  text: '#include<stdio.h>//---->Basic Input/Output Header File\n'
                      'main() //----->Main function\n'
                      '{ //--->Curly Brackets start\n'
                      '//Body of the code\n'
                      '} //---->Curly Brackets End\n'
                      '#include<stdio.h>\n'
                      'main()\n'
                      '{\n'
                      'printf("Hello World");\n'
                      '}\n'
                  ,leadingNumber: '9',collapsedBackgroundColor:color[9], titleBackgroundColor:color[53], tileName:name[8]
              ),

              //Console Window
            expansionTileWithImage(
                leadingNumber:'10',collapsedBackgroundColor:color[10],titleBackgroundColor:color[52],tileName:name[9],
                text:'Console Window is an temporary window,it shows after completed compilation process.It is a black '
                    'screen window and user cannot change the output of console'
                    ' window but sometimes user want to enter any type of userdata/input so user can easily do that.'
                ,imageName:'assets/Images/console_window.png'
            ),

            //   Header File Start
              expansionTileWithImage(leadingNumber:'11',
                  collapsedBackgroundColor:color[11],
                  titleBackgroundColor:color[51],
                  tileName:name[10],
                  text:'Header Files are very important part of C language.It contains various functions for various uses like:for adding to strings use string function.'
                      'For using header files in C use(.h) extension and pre-processor(#include).In C language,there are two types of header files:1.Pre-defined 2.User-defined:',
                  imageName: 'assets/Images/header-file.jpeg'
              ),

            //   Header File End
              expansionTileWithImage(leadingNumber:'11',
                collapsedBackgroundColor:color[11],
                titleBackgroundColor:color[51],
                tileName:name[10],
                text:'Header Files are very important part of C language.It contains various functions for various uses like:for adding to strings use string function.'
                    'For using header files in C use(.h) extension and pre-processor(#include).In C language,there are two types of header files:1.Pre-defined 2.User-defined:',
                imageName: 'assets/Images/header-file.jpeg'
              ),
              //   Header File Start

            //   Types of Header File Start
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ExpansionTile(title:
            const Text('Types of Header Files',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
                leading:const Text('12',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                backgroundColor:color[50],
                collapsedBackgroundColor:color[11],
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side:const BorderSide(color:Colors.black),
                    borderRadius: BorderRadius.circular(20)
                ),

                collapsedShape: RoundedRectangleBorder(
                    side:const BorderSide(color:Colors.black),
                    borderRadius: BorderRadius.circular(20)
                ),
                collapsedIconColor: Colors.white,
                tilePadding: const EdgeInsets.all(30),
                textColor: Colors.white,
                children:[
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('1.Pre-Defined Header File:',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Pre-defined header files  is also known as standard header files.They are those header files which are already exist in C language.Its gives '
                        'various functions for various use.C language Contains huge amount of function for different use.like:<stdio.h> gives input/output functions or '
                        '<maths.h> gives maths function and so on.For using pre-defined header file use (.h extension and pre-processor directives(#include<>)).',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('#include<stdio.h>\n'
                        '#include<math.h>\n'
                        'main() {\n'
                        'printf("This is a Pre-Defined Header File");\n'
                        '//Using Math Function\n'
                        '//pow stands for power function.It take first arguments base number and second argument take power variable\n'
                        ' 3\n'
                        '2'
                        'int power=pow(2,3);'
                        '}\n',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                  ),
                  Center(
                    child:Image.asset('assets/Images/pre-defined-header-file.png')
                  ),
                  // User-Defined Header File
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('1.User-Defined Header File:',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('User-defined header files  is also known as Non-Standard header files.They are those header files which are created by user and write own code.'
                        'It is used for re-usability of code.For making User-Defined header file:1.Make a file and write function according to use.\n'
                        '2.Must be save file with .h extension.For use of user-defined header file use (.h extension and pre-processor directives(#include"")).',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        '.h file of C\n'
                        '#include<stdio.h>\n'
                        '#include<math.h>\n'
                        'void power() {\n'
                        'printf("This is a Pre-Defined Header File");\n'
                        '//Using Math Function\n'
                        '//pow stands for power function.It take first arguments base number and second argument take power variable\n'
                        '// 3\n'
                        '//2'
                        'int power=pow(2,3);'
                        'printf("The 2 power 3 is:%d",power);'
                        '}\n'
                        'C Main File\n'
                        '#include<stdio.h>\n'
                            'void main() {\n'
                            'power();\n'
                            'power();\n'
                            '}\n',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                  ),
                  Center(
                      child:Image.asset('assets/Images/pre-defined-header-file.png')
                  ),
                ]
            ),
          ),
            //   Types of Header File End

            //   Pre-Processor Directives Start
              expansionTileWithImage(leadingNumber:'14',
                  collapsedBackgroundColor:color[11],
                  titleBackgroundColor:color[51],
                  tileName:name[10],
                  text:'The pre-processor is a program which process the source code before it passes through compiler. It operates under the control of different '
                      'command lines or directives.Pre-processor are placed in source program before the main line, it begins with symbol# in column one and do not '
                      'require a semicolon at the end.\n'
                      'Mainly used two types of preprocessor directives:\n'
                      '1.#include\n'
                      '2.#define\n\n'
                      '1.#include:is used to include a file in the source code program:\n'
                      '#include<stdio.h>//preprocessor directives(#include)\n'
                      'main() {\n'
                      'printf("Hello");\n'
                      ' }\n'
                      '2.#define: is used to define a macro,it means define any value.In #define no need to use semi column at the end(;)\n'
                      '#include<stdio.h>\n'
                      '#define PI 3.14 //#define token value\n'
                      'main() {\n'
                      'printf("This is PI Value");\n'
                      'float value=2*PI;\n'
                      'printf("Value is:%f",value);\n'
                      ' }\n',
                  imageName: 'assets/Images/preprocessor-directives.png'
              ),
            //   Pre-Processor Directives End

            //   Datatypes Start
              expansionTileWithImage(leadingNumber:'14',
                  collapsedBackgroundColor:color[11],
                  titleBackgroundColor:color[51],
                  tileName:name[10],
                  text:'Each variable in C has an associated data type. It specifies the type of data that the variable can store like integer, '
                      'character, floating, double, etc. Each data type requires different amounts of memory and has some specific operations which can be performed over it. '
                      'The data type is a collection of data with values having fixed values, meaning as well as its characteristics.',
                  imageName: 'assets/Images/datatypes.png'
              ),

              // Types of Datatypes
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ExpansionTile(title:
                const Text('Primitive Data-types',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                    leading:const Text('12',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    backgroundColor:color[50],
                    collapsedBackgroundColor:color[11],
                    iconColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side:const BorderSide(color:Colors.black),
                        borderRadius: BorderRadius.circular(20)
                    ),

                    collapsedShape: RoundedRectangleBorder(
                        side:const BorderSide(color:Colors.black),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    collapsedIconColor: Colors.white,
                    tilePadding: const EdgeInsets.all(30),
                    textColor: Colors.white,
                    children:[
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Primitive Data-types are those data-types which are used with variable and it represent which type of data are stored in memory.',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('1.int:',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('int stand for integer,it store integer value up to 10 digits.',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                            'Syntax:datatype variable;'
                            '#include<stdio.h>\n'
                            '#include<math.h>\n'
                            'main() {\n'
                            'int num=10;//datatype variable=10;\n'
                            'printf("Number is:%d",num);\n'
                            '}\n',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      Center(
                          child:Image.asset('assets/Images/int.png')
                      ),
                      // User-Defined Header File
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('1.User-Defined Header File:',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('User-defined header files  is also known as Non-Standard header files.They are those header files which are created by user and write own code.'
                            'It is used for re-usability of code.For making User-Defined header file:1.Make a file and write function according to use.\n'
                            '2.Must be save file with .h extension.For use of user-defined header file use (.h extension and pre-processor directives(#include"")).',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '.h file of C\n'
                              '#include<stdio.h>\n'
                              '#include<math.h>\n'
                              'void power() {\n'
                              'printf("This is a Pre-Defined Header File");\n'
                              '//Using Math Function\n'
                              '//pow stands for power function.It take first arguments base number and second argument take power variable\n'
                              '// 3\n'
                              '//2'
                              'int power=pow(2,3);'
                              'printf("The 2 power 3 is:%d",power);'
                              '}\n'
                              'C Main File\n'
                              '#include<stdio.h>\n'
                              'void main() {\n'
                              'power();\n'
                              'power();\n'
                              '}\n',style:TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.justify,),
                      ),
                      Center(
                          child:Image.asset('assets/Images/pre-defined-header-file.png')
                      ),
                    ]
                ),
              )
            //   Datatypes End
            ],
          ),
        )
    );
  }
}