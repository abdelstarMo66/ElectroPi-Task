import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: context.colorScheme.primary.withValues(alpha: 0.05),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.lock_reset_rounded,
                  size: 40,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            AppSize.s32.verticalSpace,

            Text(
              'Update your password',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            AppSize.s8.verticalSpace,
            Text(
              'Your new password must be different from previously used passwords.',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            AppSize.s32.verticalSpace,

            const _PasswordField(label: 'Current Password', hint: '••••••••'),
            AppSize.s20.verticalSpace,
            const _PasswordField(
              label: 'New Password',
              hint: '••••••••',
              helperText:
                  'Minimum 8 characters with a mix of letters & numbers.',
            ),
            AppSize.s20.verticalSpace,
            const _PasswordField(
              label: 'Confirm New Password',
              hint: '••••••••',
            ),

            AppSize.s40.verticalSpace,

            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'UPDATE PASSWORD',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PasswordField extends StatefulWidget {
  final String label;
  final String hint;
  final String? helperText;

  const _PasswordField({
    required this.label,
    required this.hint,
    this.helperText,
  });

  @override
  State<_PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<_PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: context.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
        AppSize.s8.verticalSpace,
        TextField(
          obscureText: _isObscured,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: context.colorScheme.onSurfaceVariant.withOpacity(0.3),
            ),
            filled: true,
            fillColor: context.colorScheme.surfaceContainerLow,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 20,
                color: context.colorScheme.onSurfaceVariant,
              ),
              onPressed: () => setState(() => _isObscured = !_isObscured),
            ),
          ),
        ),
        if (widget.helperText != null) ...[
          AppSize.s8.verticalSpace,
          Text(
            widget.helperText!,
            style: context.textTheme.labelSmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant.withOpacity(0.7),
            ),
          ),
        ],
      ],
    );
  }
}
