import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  const InternetExceptionWidget({super.key,this.onPressed});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
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
                "Internet Exception",
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
