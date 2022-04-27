import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  TextEditingController _datecontroller = new TextEditingController();
  DateTime date = new DateTime.now();

  var myFormat = DateFormat('d-MM-yyyy');
  Future<void> _SelectTimePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1940),
      lastDate: DateTime(2200),
      builder: (BuildContext context, child) => Theme(
        data: ThemeData().copyWith(
          colorScheme: ColorScheme.dark(
              primary: Colors.amber,
              onPrimary: Colors.white,
              surface: Colors.amber,
              onPrimaryContainer: Colors.orangeAccent,
              onSurface: Colors.white),
          dialogBackgroundColor: Colors.white12,
        ),
        child: Center(child: child),
      ),
    );
    if (picked != null) ;
    setState(() {
      date = picked ?? date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.amber,
        elevation: 1,
        foregroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          height: 50,
          width: 330,
          child: Center(
            child: TextField(
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () => _SelectTimePicker(context),
            child: IgnorePointer(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('${date.day}-${date.month}-${date.year}'),
                      Padding(
                          padding: EdgeInsets.only(
                        right: 15,
                      )),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: IconButton(
                          icon: Icon(
                            Icons.calendar_month_outlined,
                            size: 30,
                          ),
                          onPressed: () async {
                            _SelectTimePicker(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

DateFormat(String s) {}
