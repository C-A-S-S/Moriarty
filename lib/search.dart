import 'package:flutter/material.dart';
import 'package:moriarity/provider/QrValueProvider.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  // static const List<String> _sOptions = <String>[
  //   'sample1',
  //   'sample2',
  //   'sample3',
  // ];

  @override
  Widget build(BuildContext context) {
    final qrObj = Provider.of<QrVal>(context);
    List<String> _sOptions = qrObj.sOptions;
    print("\n\n\n\ the data from qr is ${qrObj.value}");
    return Autocomplete<String>(
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        textEditingController.text = textEditingController.text == ""
            ? qrObj.value
            : textEditingController
                .text; // You can use the next snip of code if you dont want the initial text to come when you use setState((){});
        return TextFormField(
          controller:
              textEditingController, //uses fieldViewBuilder TextEditingController
          focusNode: focusNode,
        );
      },
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          // textEditingValue.text

          return const Iterable<String>.empty();
        }

        // if (qrObj.value != "") {
        //   return _sOptions.where((String option) {
        //     return option.contains(qrObj.value.toLowerCase());
        //   });
        // }

        return _sOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You just selected $selection');
      },
    );
  }
}
