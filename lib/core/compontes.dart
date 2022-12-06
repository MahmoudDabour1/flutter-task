import 'package:flutter/material.dart';

Widget defaultTextButton({
  required VoidCallback function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(text,style: const TextStyle(
        color: Colors.orange,
      ),),
    );

Widget defaultFormFelid({
  required TextEditingController controller,
  required TextInputType type,
  final void Function(String?)? onSubmit,
  final void Function(String?)? onChange,
  required final FormFieldValidator<String>? Validate,
  required String label,
  required IconData prefix,
  bool isPassword = false,
  var onTap,
  IconData? suffix,
  var suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: Validate,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed(),
                icon: Icon(
                  suffix,
                ))
            : null,
      ),
    );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0,
  required VoidCallback function,
  required String text,
  var Icon,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

void navigatorTo(
  context,
  page,
) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );

final navigatorKey = GlobalKey<NavigatorState>();

 showMessage({required String msg}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      backgroundColor: Colors.grey.withOpacity(0.5),
      elevation: 0,
      content: Expanded(
        child: Row(
          children: [
            const Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  msg,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
