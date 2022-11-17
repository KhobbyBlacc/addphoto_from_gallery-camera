import 'package:flutter/material.dart';
import 'package:myhealthcop/constants/constants.dart';

class Elements extends StatelessWidget {
  const Elements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(8),
                      decoration:  BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Icon((Icons.info), size: 20),
                    ),
                     Flexible(
                      fit: FlexFit.loose,
                      child: VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 24),
                    width: double.infinity,
                    child: Text(
                      "General Information",
                      style: kText,
                    )),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(8),
                      decoration:  BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon((Icons.mode_night), size: 20),
                    ),
                     Flexible(
                      fit: FlexFit.loose,
                      child: VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 24),
                    width: double.infinity,
                    child: Text(
                      'Class Description',
                      style: kText,
                    )),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(8),
                  decoration:  BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon((Icons.image), size: 20),
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 24),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text(
                          "Media & Resources",
                          style: kText,
                        ),
                        Text(
                          '(Optional)',
                          style: kSubText,
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
