import 'package:flutter/material.dart';
import 'package:voice_assistant/feature_box.dart';
import 'package:voice_assistant/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ali',
          ),
          leading: const Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // vrttual assistant picture
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: const EdgeInsets.only(
                        top: 4,
                      ),
                      decoration: const BoxDecoration(
                          color: Pallete.assistantCircleColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Container(
                    height: 123,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/virtualAssistant.png',
                      )),
                    ),
                  ),
                ],
              ),
              //chat Bubble
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
                  top: 30,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Pallete.borderColor,
                    ),
                    borderRadius: BorderRadius.circular(20).copyWith(
                      topLeft: Radius.zero,
                    )),
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Good Morning, what task can I do for you?',
                      style: TextStyle(
                        fontFamily: 'Cera-Pro',
                        color: Pallete.mainFontColor,
                        fontSize: 20,
                      ),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 22,
                ),
                child: const Text(
                  'Here are a few features',
                  style: TextStyle(
                    fontFamily: 'Cera-Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // features list
              Column(
                children: const [
                  FeatureBox(
                    color: Pallete.firstSuggestionBoxColor,
                    headerText: 'Chat GPT',
                    descriptionText:
                        'A smart way to stay organized and informed with ChatGPT',
                  ),
                  FeatureBox(
                    color: Pallete.secondSuggestionBoxColor,
                    headerText: 'Dall-E',
                    descriptionText:
                        'Get inspired and stay creative with personal assistance prowered by Dall-E',
                  ),
                  FeatureBox(
                    color: Pallete.secondSuggestionBoxColor,
                    headerText: 'Smart Voice Assistant',
                    descriptionText:
                        'Get the best of both world with a voice assistant powered by the ChatGPT and Dall-E',
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Pallete.firstSuggestionBoxColor,
          onPressed: () {},
          child: const Icon(Icons.mic),
        ));
  }
}
