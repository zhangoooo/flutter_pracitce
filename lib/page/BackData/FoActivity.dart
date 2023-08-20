
import 'package:flutter/material.dart';
    
class FoActivity extends StatelessWidget {

  const FoActivity({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Returning Data Demo'),
      ),
      body: Container(
        child: const SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  @override
  State<StatefulWidget> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: const Text('Pick an option, any option!'));
  }

  //TODO asyc？
  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SelectionScreen()),
    );
    if(!mounted) return ;
    ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget{
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Pick an option'),
        ),
        body: Center(
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: (){
                                Navigator.pop(context, 'Yep!');
                            },
                            child: const Text('Yep!'),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () {
                                Navigator.pop(context, 'Nope.');
                            },
                            child: const Text('Nope.'),
                         ),
                    )
                ],
            )
        ),
    );
  }
}
