import 'package:flutter/material.dart';
import 'package:portfolio/components/Container/projects_container.dart';
import 'package:portfolio/components/Text/normal_text.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NormalText(text: 'Projects',fontSize: 40,),
          Wrap(
            children: [
            // First Container Start
            ProjectsContainer(
                accuracy:'Accuracy: 90%',
                content:'Programming Application are very helpful for those students have facing '
                    'problem in programming or projects.There are various types of programming languages,projects'
                    "or questions are available on this projects.It gives good quality content with video's lectures available on this project.",
                imageLocation:'assets/Images/Projects/programmingapplication.png',
                projectName:'Programming Application',
            ),
            // Second Container Start
              ProjectsContainer(
                  accuracy:'Accuracy: 85%',
                  content:"This project saves customers time for purchasing products or available different products or"
                      "different costs for each level of customers.It's store data into databases as a details of customers.",
                  imageLocation:'assets/Images/Projects/projectecommerce.png',
                  projectName:'E-Commerce Website',
                  spanText: '',),
            // Third Container Start
              ProjectsContainer(
                  accuracy:'Accuracy: 80%',
                  content:"This project based on language translator for those people have facing problem for understanding different languages.",
                  imageLocation:'assets/Images/Projects/language-translator.png',
                  projectName:'Language Translator',
                  spanText: '',
              ),
            // Fourth Container Start
              ProjectsContainer(
                  accuracy:'Accuracy: 85%',
                  content:'This project based on machine learning model for predictions like:'
                      'Car Predictions,Student Records,and Image Classification',
                  imageLocation:'assets/Images/Projects/machine-learning.png',
                  projectName:'Car Prediction or Image Processing',
                  spanText: '',
              ),
            ],
          )
        ],
      ),
    );
  }
}
