import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/widgets/loading.dart';
import '../../../../common/widgets/space.dart'; // Importing custom widget for spacing
import '../../../../core/theme/colors.dart'; // Importing custom theme colors
import '../blocs/number_trivia_bloc/number_trivia_bloc.dart'; // Importing the NumberTriviaBloc

/// to validate form [_formKey] is used
final _formKey = GlobalKey<FormState>(); // GlobalKey to manage the form state

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// The [theme] variable holds the current theme information.
    /// This allows you to implement a UI that adapts to light and dark themes.
    ThemeData theme = Theme.of(context); // Getting current theme data
    Size size = MediaQuery.of(context).size; // Getting screen size
    NumberTriviaBloc triviaBloc = context.read<
        NumberTriviaBloc>(); // Getting instance of NumberTriviaBloc using context

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("EventBasket",style: TextStyle(fontWeight: FontWeight.w900),), // AppBar title
        ),
        body: BlocSelector<NumberTriviaBloc, NumberTriviaState, bool>(
          selector: (state) {
            return state.isLoading;
          },
          builder: (context, isLoading) {
            /// This Loading widget is used here solely to demonstrate its usage in your project.
            /// You can utilize other loading types as the situation dictates.
            /// If you need to display a loading indicator across the entire screen,
            /// this Loading widget can be employed.
            return Loading(
              isLoading: isLoading,
              child: Padding(
                padding: const EdgeInsets.all(10.0), // Padding for the body
                child: Form(
                  key: _formKey, // Assigning the GlobalKey to the Form widget
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centering widgets vertically
                    children: [
                      Expanded(
                        child: Center(
                          child: Container(
                            width: size.width,
                            constraints: const BoxConstraints(minHeight: 40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: theme.brightness == Brightness.dark
                                  ? const Color.fromARGB(255, 22, 22, 22)
                                  : const Color.fromARGB(255, 244, 244,
                                      244), // Setting container background color
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: BlocBuilder<NumberTriviaBloc,
                                  NumberTriviaState>(
                                builder: (context, state) {
                                  if (state.error != null) {
                                    return Text(
                                      "${state.error}", // Displaying error message if any
                                      textAlign: TextAlign.center,
                                    );
                                  }
                                  return Text(
                                    state.trivia == null
                                        ? state.isLoading
                                            ? ""
                                            : "Enter a number and click Get Triva button" // Placeholder message
                                        : "${state.trivia?.id}", // Displaying trivia text
                                    textAlign: TextAlign.center,
                                  );
                                },
                              )),
                            ),
                          ),
                        ),
                      ),
                      Space.y(10),
                      TextFormField(
                        controller: triviaBloc
                            .numberController, // Binding the TextEditingController from bloc
                        keyboardType:
                            TextInputType.number, // Allowing only number input
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a number"; // Validation message if the field is empty
                          }
                          return null;
                        },
                      ),
                      Space.y(10), // Adding vertical space
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors
                                .blackColor, // Setting button background color
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              triviaBloc.add(
                                  const GetTrivia()); // Triggering event to get trivia
                            }
                          },
                          child: Text(
                            "Get Trivia", // Button text
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: AppColors
                                  .whiteColor, // Setting button text color
                            ),
                          ),
                        ),
                      ),
                      Space.y(10), // Adding vertical space
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

