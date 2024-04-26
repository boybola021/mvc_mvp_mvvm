import 'package:flutter/material.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback? onPressed;

  const GeneralExceptionWidget({super.key, this.onPressed});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .15,
          ),
          const Icon(
            Icons.cloud_off,
            color: Colors.red,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "We're unable tp show result.\nPleace check your data\n connection",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .15,
          ),
          ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
            ),
            child: const Text(
              "Retry",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
