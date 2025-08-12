import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';

class LoginViewPage extends StatefulWidget {
  const LoginViewPage({super.key});

  @override
  State<LoginViewPage> createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginViewPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simulate login process
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _isLoading = false;
        });

        if (!mounted) return;

        // Navigate to home screen
        Navigator.pushReplacementNamed(context, '/home');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: MediaQuery.of(context).padding.top,
              ),
              children: [
                // App Logo/Icon
                Icon(
                  FontAwesomeIcons.futbol,
                  size: 80.sp,
                  color: colorScheme.primary,
                ),
                SizedBox(height: MediaQuery.of(context).padding.top / 2),

                // Welcome Text
                Text(
                  'مرحباً بك في تطبيق حجز الرياضة',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.eduSaBeginner(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.top / 2),

                Text(
                  'سجل دخولك للوصول لحسابك',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.eduSaBeginner(
                    fontSize: 16.sp,
                    color: colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.top / 2),

                // Email Field
                EmailTextField(controller: _emailController),
                SizedBox(height: MediaQuery.of(context).padding.top / 2),

                // Password Field
                PasswordTextField(controller: _passwordController),
                SizedBox(height: MediaQuery.of(context).padding.top / 10),

                // Forgot Password Link
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Navigate to forgot password screen
                    },
                    child: Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(
                        color: colorScheme.primary,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.top / 2),

                // Login Button
                SizedBox(
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _handleLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primary,
                      foregroundColor: colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                    ),
                    child: _isLoading
                        ? SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : Text(
                            'تسجيل الدخول',
                            style: GoogleFonts.eduSaBeginner(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.top / 1.3),

                // Divider
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colorScheme.onSurface.withOpacity(0.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'أو',
                        style: TextStyle(
                          color: colorScheme.onSurface.withOpacity(0.6),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: colorScheme.onSurface.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).padding.top / 1.3),

                // Social Login Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Handle Google login
                        },
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          size: 24,
                          // color: Colors.red,
                        ),
                        label: Text(
                          'Google',
                          style: GoogleFonts.eduSaBeginner(fontSize: 16.sp),
                        ),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),

                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Handle Apple login
                        },
                        icon: const Icon(
                          FontAwesomeIcons.apple,
                          size: 24,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Apple',
                          style: GoogleFonts.eduSaBeginner(fontSize: 16.sp),
                        ),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).padding.right / 2),

                // Sign Up Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      'ليس لديك حساب؟ ',
                      style: TextStyle(
                        color: colorScheme.onSurface.withOpacity(0.7),
                        fontSize: 14.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'إنشاء حساب جديد',
                        style: TextStyle(
                          color: colorScheme.primary,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
