import 'package:myportfolio/models/experience_model.dart';
import 'package:myportfolio/utils/strings.dart';

final List<ExperienceModel> experiences = [
  ExperienceModel(
    year: expGigaServiziYear,
    role: expGigaServiziJob,
    company: expGigaServiziCompany,
    location: expGigaServiziLocation,
    description: expGigaServiziDesc,
    projects: [],
  ),
  ExperienceModel(
    year: expArethusaYear,
    role: expArethusaJob,
    company: expArethusaCompany,
    location: expArethusaLocation,
    description: expArethusaDesc,
    projects: [
      ExperienceProjectModel(
        title: expDiggerlyTitle,
        description: expDiggerlyDesc,
        chips: [
          expGit,
          expGitHub,
          expVSCode,
          expAndroid,
          expFlutter,
          expDart,
          expAndroidStudio,
          expKotlin,
          expCompose,
          expXMLLayout,
          expMongoDB,
        ],
      ),
      ExperienceProjectModel(
        title: expReassetTitle,
        description: expReassetDesc,
        chips: [
          expGit,
          expGitHub,
          expHyperledger,
          expVSCode,
          expTypeScript,
          expNode,
          expReact,
          expAndroid,
          expFlutter,
          expDart
        ],
      ),
      ExperienceProjectModel(
        title: expCadsTitle,
        description: expCadsDesc,
        chips: [expGit, expGitHub, expVSCode, expAndroid, expFlutter, expDart],
      ),
    ],
  ),
];
