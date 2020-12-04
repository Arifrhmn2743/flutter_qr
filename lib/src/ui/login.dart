import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hidepassword = true;

  String url = 'https://reqres.in/api/login';
  Future sendRequest() async {
    Map json = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    http.Response response = await http.post(url, body: json);
    if (response.statusCode == 200) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Sukses"),
              content: Text("Login Berhasil"),
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/menu");
                    },
                    child: Text('Ok'))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Login Page'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 19.0,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    "Password",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      obscureText: _hidepassword,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        fontSize: 19.0,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglePasswordVisibility();
                          },
                          child: Icon(
                            _hidepassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color:
                                _hidepassword ? Colors.grey : Colors.blueAccent,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 40,
                      child: RaisedButton(
                        onPressed: () async {
                          sendRequest();
                        },
                        child: Text("Login"),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _togglePasswordVisibility() {
    setState(() {
      _hidepassword = !_hidepassword;
    });
  }
}
