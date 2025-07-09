import 'package:flutter/material.dart';
import 'package:sports_activity_booking/widgets/custom_social_circl_button.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleSignup() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _isLoading = false;
        });
        Navigator.pushReplacementNamed(context, '/home');
      });
    }
  }

  String? _confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى تأكيد كلمة المرور';
    }
    if (value != _passwordController.text) {
      return 'كلمة المرور غير متطابقة';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final accent = colorScheme.primary;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              children: [
                // Welcome
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.eduSaBeginner(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.eduSaBeginner(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: accent,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Create your account to get started.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.eduSaBeginner(
                    fontSize: 15,
                    color: colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 28),
                // Fields
                CustomTextField(
                  controller: _fullNameController,
                  labelText: 'Full Name',
                  hintText: 'Full Name',
                  prefixIcon: Icons.person_outline,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 14),
                EmailTextField(controller: _emailController),
                const SizedBox(height: 14),
                PasswordTextField(
                  controller: _passwordController,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 14),
                CustomTextField(
                  controller: _confirmPasswordController,
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Password',
                  prefixIcon: Icons.lock_outline,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  validator: _confirmPasswordValidator,
                ),
                const SizedBox(height: 18),
                // Sign Up Button
                SizedBox(
                  height: 46,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _handleSignup,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    child: _isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : Text(
                            'Sign Up',
                            style: GoogleFonts.eduSaBeginner(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 18),
                // Or divider
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colorScheme.onSurface.withOpacity(0.2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or Sign Up With',
                        style: GoogleFonts.eduSaBeginner(
                          fontSize: 13,
                          color: colorScheme.onSurface.withOpacity(0.7),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: colorScheme.onSurface.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                // Social buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleButton(
                      icon: Icons.g_mobiledata,
                      color: Colors.red,
                      bgColor: Colors.white,
                      onTap: () {},
                    ),
                    const SizedBox(width: 16),
                    CustomCircleButton(
                      icon: Icons.apple,
                      color: Colors.black,
                      bgColor: Colors.white,
                      onTap: () {},
                    ),
                    const SizedBox(width: 16),
                    CustomCircleButton(
                      icon: Icons.facebook,
                      color: Colors.blueAccent,
                      // bgColor: Colors.white,
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                // Already have account
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: GoogleFonts.eduSaBeginner(
                          fontSize: 14,
                          color: colorScheme.onSurface.withOpacity(0.7),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.eduSaBeginner(
                            fontSize: 14,
                            color: accent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
