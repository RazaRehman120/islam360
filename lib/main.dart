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
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter both email and password')),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Signing in as $email...')),
    );
  }

  void _handleForgotPassword() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Forgot password flow coming soon')),
    );
  }

  void _handleSignUp() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Sign up flow coming soon')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff357a38),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  height: 150,
                  width: 150,
                  image: AssetImage('images/islam360.jpeg'),
                ),
              ],
            ),
            const SizedBox(height: 13),
            const Text(
              'Log in',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Connect Yourself\n with Islam',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.mail_outline_rounded),
                  fillColor: const Color(0xff449e48),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff449e48),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock_open_outlined),
                  fillColor: const Color(0xff449e48),
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xff449e48),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: GestureDetector(
                onTap: _handleForgotPassword,
                child: const Text('Forget Password?'),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: _handleSignIn,
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color(0xff449e48),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontFamily: 'NotoSans', fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account",
                  style: TextStyle(fontSize: 15, fontFamily: 'NotoSans'),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: _handleSignUp,
                  child: const Text(
                    'Sign up?',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
