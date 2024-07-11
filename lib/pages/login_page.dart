import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool keepSigning = false;

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  Color _getLabelColor(FocusNode focusNode) {
    return focusNode.hasFocus ? Colors.red : Colors.black;
  }

  @override
  void initState() {
    super.initState();
    _usernameFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo at the top center
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'assets/images/logo.png',
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                return Text('Error loading logo');
              },
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Username Field
                    TextField(
                      focusNode: _usernameFocusNode,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: _getLabelColor(_usernameFocusNode),
                        ),
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Password Field
                    TextField(
                      focusNode: _passwordFocusNode,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: _getLabelColor(_passwordFocusNode),
                        ),
                        suffixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),
                      ),
                      obscureText: true,
                    ),
                    // Keep Signing Checkbox and Forgot Password Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: keepSigning,
                              onChanged: (bool? value) {
                                setState(() {
                                  keepSigning = value!;
                                });
                              },
                            ),
                            Text('Keep signing'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot Password'),
                        ),
                      ],
                    ),
                    // Login Button
                    Align(
                      alignment: Alignment.centerRight,
                      child: IntrinsicWidth(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add some space before the logo
                    // Additional Sign-In Options (Google, Apple)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.g_translate),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.apple),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Spacer(), // Pushes the logo to the bottom
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
