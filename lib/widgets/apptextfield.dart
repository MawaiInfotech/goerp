import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.onSearchChanged,
    required this.hintText,
    this.text = '',
    this.error,
    this.isPassword = false,
    this.icon = Icons.search,
    this.borderColor = Colors.black,
    Key? key,
  }) : super(key: key);

  final void Function(String) onSearchChanged;
  final String hintText;
  final String? error;
  final bool isPassword;
  final Color borderColor;
  final IconData icon;
  final String text;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OpacityAnimatedWidget.tween(
      opacityDisabled: 0,
      duration: const Duration(milliseconds: 1500),
      opacityEnabled: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.dw, right: 15.dw, top: 15.dh),
            child: Center(
              child: SizedBox(
                width: ScreenSizeConfig.getFullWidth / 1.2,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(30.dh),
                  child: TextField(
                    controller: controller,
                    onChanged: widget.onSearchChanged,
                    obscureText: widget.isPassword,
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(widget.icon),
                      contentPadding: EdgeInsets.all(15.dw),
                      focusedBorder: _border(),
                      disabledBorder: _border(),
                      enabledBorder: _border(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          _buildErrorText()
        ],
      ),
    );
  }

  _buildErrorText() {
    if (widget.error == null) return SizedBox(height: 10.dh);
    return Padding(
      padding: EdgeInsets.only(top: 20.dh, left: 40.dw, bottom: 10.dh),
      child: Text(widget.error!, style:  TextStyle(color: AppColors.red)),
    );
  }

  _border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.dw),
      borderSide: BorderSide(color: Colors.grey.shade100));
}
