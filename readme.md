# Wallx

[![Contributors](https://img.shields.io/github/contributors/dsckgec/Wallx)](https://github.com/DSCKGEC/Wallx/graphs/contributors) [![Forks](https://img.shields.io/github/forks/dsckgec/Wallx)](https://github.com/dsckgec/Wallx/network/members) [![Issues](https://img.shields.io/github/issues/dsckgec/Wallx)](https://github.com/dsckgec/Wallx/issues) [![Pull Request](https://img.shields.io/github/issues-pr-closed-raw/dsckgec/Wallx)](https://github.com/dsckgec/Wallx/pulls)


.

## Contents

1. [Description](#description)
1. [Project structure](#project-structure)
1. [Project roadmap](#project-roadmap)
1. [Getting started](#getting-started)
1. [Live demo](#live-demo)
1. [Built with](#built-with)
1. [Contributing](#contributing)
1. [Authors](#authors)
1. [License](#license)
1. [Acknowledgments](#acknowledgments)

## Description

### The idea
Wallx provides a wide range of wallpapers from the Unsplash library. the app also orders the pictures by preference and lets the user set the desired picture as lock, home screen wallpaper, or both.

## Project structure

```
+---lib
|   +---controller            (contain files that controls the child widgets)
|   +---model                 (files containing wallpapers and URL classes)
|   +---service               (holds the file for the rest API )
|   \---view
|       +---screens           (UI code for the two screens)
|       +---utils             (codes for shared grid widgets, color constants and button styles)
|       |   +---constants     
|       |   +---helpers       
|       |   \---shared        
|       \---wigets 
|  +---main.dart              (contains the main function for the execution of the program)          

```

## Project roadmap

The project currently does the following things.

- fetches necessary data from the Unsplash API to display the wallpapers. 
- orders the pictures according to preferences. 
- lets the user set any desired picture as the home and lock screen wallpaper.

See below for our future steps.

- splash screen overhaul 
- animating the search bar 
- adding new functionality wallpaper_view page 

## Getting started


### Prerequisites
1. Basic Understanding of Programming Language (preferably, C++/Java)
2. OOPS
3. Understanding of the Flutter Framework by Google

### Installing

#### Softwares needed

- [Visual Studio Code](https://code.visualstudio.com/)
- [Android Studio](https://developer.android.com/studio)
- [Flutter](https://flutter.dev/)


#### Knowledge needed

The best way to learn the following is to google each and everything!

- Fundamental understanding of Git and GitHub:

    -   What are repositories (local - remote - upstream), issues, pull requests
    -   How to clone a repository, how to fork a repository, how to set upstreams
    -   Adding, committing, pulling, and pushing changes to remote repositories

- For Flutter SDK:

  - [Getting Started with Flutter](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1)

  - Beginner to Intermediate knowledge of Flutter UI Design Patterns, Widgets, Routers, Navigation, etc.

  - Knowledge of integrating third-party libraries and Hive database (for solving backend issues, not mandatory).



#### Instructions
Below is a step-by-step series of instructions that tells you how to run the project locally. Google every issue you face following the below instructions or just ask us in our Discord channel.
- Fork and Clone the Repository
- Use Visual Studio Code/Android Studio
- In the terminal type flutter pub get
- Type flutter run in Terminal / Choose Run --> Run without Debugging and play it in any emulator of your choice(Special Note: Do not run it in WEB mode as Shared Preferences is there.)


## Live demo


## Built with

- [Visual Studio Code](https://code.visualstudio.com/)
- [Flutter/Dart](https://flutter.dev/)
- [Hive Database](https://pub.dev/packages/hive)

## Contributing

Please read [contributing.md](contributing.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

<a href="https://github.com/DSCKGEC/Wallx/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=DSCKGEC/Wallx" />
</a>

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- 
