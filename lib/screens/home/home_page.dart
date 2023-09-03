import 'package:flutter/material.dart';

const studentId = '630710037';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              _buildAdditionalContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalContent() {
    return Container(
      width: 720.0,
      height: 620.0,
      decoration: BoxDecoration(
        color: Colors.white70, // สีพื้นหลังของกรอบสีขาว
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0), //
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Question 1 of 30',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0, // ขนาดตัวอักษร
                  color: Colors.black87, // สีข้อความ
                ),
              ),
            ),
          ),
          _buildQuizView(),
          SizedBox(height: 16.0),
          _buildButtonPanel(),
        ],
      ),
    );
  }

  _buildQuizView() {
    return Container(
      width: 410,
      height: 410,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Reduce the border radius
        border: Border.all(
          color: Colors.black,
          width: 3.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0, // Adjust the border width as needed
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(
                      8.0)), // Adjust the border radius as needed
                ),
                padding: EdgeInsets.all(8.0), // Adjust the padding as needed
                child: Text(
                  'Question 1 of 30',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add spacing
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 5.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)),
            ),
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: Text(
              'What food is Thai food?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ),
          ),
          SizedBox(height: 20.0), // Add spacing
          // You can add an answer input field here
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)), // Adjust the border radius as needed
            ),
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: Text(
              'Pad Thai',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(child: Text('TODO: build UI'));
  }


}