import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final VoidCallback? onSuffixIconPressed;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final bool readOnly;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.onSuffixIconPressed,
    this.inputFormatters,
    this.maxLines = 1,
    this.maxLength,
    this.enabled = true,
    this.readOnly = false,
    this.onTap,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      maxLength: maxLength,
      enabled: enabled,
      readOnly: readOnly,
      onTap: onTap,
      focusNode: focusNode,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      style: GoogleFonts.eduSaBeginner(
        fontSize: 16,
        color: colorScheme.onSurface,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: colorScheme.onSurface.withOpacity(0.6))
            : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                  color: colorScheme.onSurface.withOpacity(0.6),
                ),
                onPressed: onSuffixIconPressed,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colorScheme.outline.withOpacity(0.5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colorScheme.outline.withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        filled: true,
        fillColor: enabled
            ? colorScheme.surface
            : colorScheme.surface.withOpacity(0.5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        labelStyle: GoogleFonts.eduSaBeginner(
          fontSize: 16,
          color: colorScheme.onSurface.withOpacity(0.7),
        ),
        hintStyle: GoogleFonts.eduSaBeginner(
          fontSize: 16,
          color: colorScheme.onSurface.withOpacity(0.5),
        ),
        errorStyle: GoogleFonts.eduSaBeginner(
          fontSize: 14,
          color: colorScheme.error,
        ),
        counterStyle: GoogleFonts.eduSaBeginner(
          fontSize: 12,
          color: colorScheme.onSurface.withOpacity(0.5),
        ),
      ),
    );
  }
}

// Specialized text field for email
class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const EmailTextField({
    super.key,
    required this.controller,
    this.validator,
    this.textInputAction,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: 'البريد الإلكتروني',
      hintText: 'أدخل بريدك الإلكتروني',
      prefixIcon: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      textInputAction: textInputAction ?? TextInputAction.next,
      validator: validator ?? _defaultEmailValidator,
      focusNode: focusNode,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }

  String? _defaultEmailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال البريد الإلكتروني';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'يرجى إدخال بريد إلكتروني صحيح';
    }
    return null;
  }
}

// Specialized text field for password
class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const PasswordTextField({
    super.key,
    required this.controller,
    this.validator,
    this.textInputAction,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      labelText: 'كلمة المرور',
      hintText: 'أدخل كلمة المرور',
      prefixIcon: Icons.lock_outlined,
      suffixIcon: _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
      obscureText: !_isPasswordVisible,
      textInputAction: widget.textInputAction ?? TextInputAction.done,
      validator: widget.validator ?? _defaultPasswordValidator,
      onSuffixIconPressed: () {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
    );
  }

  String? _defaultPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال كلمة المرور';
    }
    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
    }
    return null;
  }
}

// Specialized text field for name
class NameTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const NameTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.validator,
    this.textInputAction,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: labelText,
      hintText: hintText ?? 'أدخل $labelText',
      prefixIcon: Icons.person_outlined,
      keyboardType: TextInputType.name,
      textInputAction: textInputAction ?? TextInputAction.next,
      validator: validator ?? _defaultNameValidator,
      focusNode: focusNode,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }

  String? _defaultNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال $labelText';
    }
    if (value.length < 2) {
      return '$labelText يجب أن يكون حرفين على الأقل';
    }
    return null;
  }
}

// Specialized text field for phone number
class PhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.validator,
    this.textInputAction,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: 'رقم الهاتف',
      hintText: 'أدخل رقم هاتفك',
      prefixIcon: Icons.phone_outlined,
      keyboardType: TextInputType.phone,
      textInputAction: textInputAction ?? TextInputAction.next,
      validator: validator ?? _defaultPhoneValidator,
      focusNode: focusNode,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }

  String? _defaultPhoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال رقم الهاتف';
    }
    if (value.length < 10) {
      return 'رقم الهاتف يجب أن يكون 10 أرقام على الأقل';
    }
    return null;
  }
}
