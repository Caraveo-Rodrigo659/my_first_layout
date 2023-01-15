import 'package:flutter/material.dart';

class buttonSection extends StatefulWidget {
  const buttonSection({super.key});

  @override
  State<buttonSection> createState() => _buttonSection();
}

class _buttonSection extends State<buttonSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          color: Colors.blue,
          icon: const Icon(Icons.call),
          onPressed: () {
            setState(() {
              final snackBar = SnackBar(
                content: const Text('Llamando a Rodrigo'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.near_me),
          color: Colors.blue,
          onPressed: () {
            setState(() {
              final snackBar = SnackBar(
                content: const Text('Buscando a ...'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.share),
          color: Colors.blue,
          onPressed: () {
            setState(() {
              final snackBar = SnackBar(
                content: const Text('Compartiendo en ...'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
          },
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';

// import 'ButtonColumn.dart';

// class buttonSection extends StatelessWidget {
//   const buttonSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Color color = Theme.of(context).primaryColor;
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           padding: EdgeInsets.all(0),
//           child: IconButton(
//             onPressed: () {
//               final snackBar = SnackBar(
//                 content: const Text('Buscando a mi amor'),
//                 action: SnackBarAction(
//                   label: 'Undo',
//                   onPressed: () {
//                     // Some code to undo the change.
//                   },
//                 ),
//               );

//               // Find the ScaffoldMessenger in the widget tree
//               // and use it to show a SnackBar.
//               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//             },
//             color: color,
//             icon: Icon(Icons.call),
//           ),
//         ),
//         ButtonColumn(color: color, icon: Icons.share, label: 'SHARE'),
//       ],
//     );
//   }
// }
