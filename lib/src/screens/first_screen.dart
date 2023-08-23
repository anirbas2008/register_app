import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isVisible = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          size: 25,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 31),
                child: Text(
                  "Login to your Account",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Jost",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        showCursor: true,
                        enabled: true,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              gapPadding: 4,
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade200,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              gapPadding: 4,
                              borderSide: const BorderSide(
                                color: Color(0xffbb0063),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Color(0xffbb0063)),
                            prefixIcon: const Icon(Icons.mail),
                            prefixIconColor: Color(0xffbb0063),
                            filled: true,
                            fillColor: Colors.grey.shade200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: TextFormField(
                        obscureText: _isVisible,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.visiblePassword,
                        showCursor: true,
                        enabled: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            gapPadding: 4,
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade200,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            gapPadding: 4,
                            borderSide: const BorderSide(
                              color: Color(0xffbb0063),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xffbb0063)),
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: Color(0xffbb0063),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          suffixIcon: icon(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 200,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: const Color(0xffbb0063)),
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: const Color(0xffbb0063),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Remember me",
                        style: TextStyle(
                            color: Color(0xffbb0063),
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: 337,
                    height: 53,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xffbb0063),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Forgot the password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Jost",
                        color: Color(0xffbb0063),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 97,
                          height: 2,
                          child: ColoredBox(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "or continue with",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            )),
                        SizedBox(
                          width: 97,
                          height: 2,
                          child: ColoredBox(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        cont("assets/images/img.png"),
                        cont("assets/images/img_1.png"),
                        cont("assets/images/img_2.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  const TextSpan(
                    text: "Sign in",
                    style: TextStyle(
                      color: Color(0xffbb0063),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                    ),
                    mouseCursor: SystemMouseCursors.click
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget icon() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isVisible = !_isVisible;
        });
      },
      icon: _isVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
      color: const Color(0xffbb0063),
    );
  }

  Widget cont(String location) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: SizedBox(
        width: 82,
        height: 53,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Center(
            child: Image(
              image: AssetImage(location),
              width: 27,
              height: 27,
            ),
          ),
        ),
      ),
    );
  }
}
