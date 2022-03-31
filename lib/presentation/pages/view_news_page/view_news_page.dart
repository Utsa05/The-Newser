import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class ViewNewsPage extends StatelessWidget {
  const ViewNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.blackColor,
        ),
        elevation: 0.0,
        title: const TextWidget(
          title: 'News Details',
          size: 19.0,
          weight: FontWeight.bold,
        ),
        backgroundColor: AppColor.bgColor,
        actions: [
          IconButton(
              splashRadius: 23.0,
              onPressed: () {},
              icon: const Icon(
                Icons.share_outlined,
                color: AppColor.titleColor,
              )),
          const SizedBox(
            width: 6.0,
          ),
          IconButton(
              splashRadius: 23.0,
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: AppColor.titleColor,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ViewNewsHeader(),
              const SizedBox(
                height: 6.0,
              ),
              const TextWidget(
                line: 2,
                title: 'Bathing in Cleopatrs desert poll...',
                weight: FontWeight.bold,
                color: AppColor.titleColor,
                size: 29.0,
              ),
              const SizedBox(
                height: 9.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Hero(
                  tag: 2,
                  child: Image.asset(
                    "assets/images/images.jpg",
                    fit: BoxFit.cover,
                    height: 200.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Expanded(
                child: Text(
                  'NFA stands for non-deterministic finite automata. It is easy to c NFA stands for non-deterministic finite automata. It is easy to construct an NFA when compared to DFA for a given regular language. The finite automata are called NFA when there exist many paths for specific input from the current state to the next state. Each NFA can be translated into DFA but every NFA is Non DFA  for non-deterministic finite automata. It is easy to c NFA stands for non-deterministic finite automata. It is easy to construct an NFA when compared to DFA for a given regular language. The finite automata are called NFA when there exist many paths for specific input from the current state to the next state. Each NFA can be translated into DFA but every NFA is Non DFA  for non-deterministic finite automata. It is easy to c NFA stands for non-deterministic finite automata. It is easy to construct an NFA when compared to DFA for a given regular language. The finite automata are called NFA when there exist many paths for specific input from the current state to the next state. Each NFA can be translated into DFA but every NFA is Non DFA for non-deterministic finite automata. It is easy to c NFA stands for non-deterministic finite automata. It is easy to construct an NFA when compared to DFA for a given regular language. The finite automata are called NFA when there exist many paths for specific input from the current state to the next state. for non-deterministic finite automata. It is easy to c NFA stands for non-deterministic finite automata. It is easy to construct an NFA when compared to DFA for a given regular language. The finite automata are called NFA when there exist many paths for specific input from the current state to the next state. Each NFA can be translated into DFA but every NFA is Non DFA for non-deterministic finite automata. It is easy to c NFA stands for non-deterministic finite automata. It is easy to construct an NFA when compared to DFA for a given regular language. The finite automata are called NFA when there exist many paths for specific input from the current state to the next state. Each NFA can be translated into DFA but every NFA is Non DFA Each NFA can be translated into DFA but every NFA is Non DFA',
                  style: TextStyle(fontSize: 16.0, wordSpacing: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ViewNewsHeader extends StatelessWidget {
  const ViewNewsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            color: AppColor.primarColor,
            onPressed: () {},
            height: 33.0,
            child: const TextWidget(
              weight: FontWeight.bold,
              color: AppColor.whiteColor,
              title: 'Popular',
            ),
          ),
          const TextWidget(
            line: 2,
            title: 'April 4/1/2022',
            weight: FontWeight.normal,
            color: AppColor.titleColor,
            size: 16.0,
          )
        ],
      ),
    );
  }
}
