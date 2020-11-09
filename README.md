# The Movie Database App

A simple movie app for showcasing app development with [Flutter](https://flutter.dev/). It connects to the [The Movie Database](https://www.themoviedb.org/) API for querrying and showing popular movies. The app uses [Firebase](https://firebase.google.com/) for authentication.

## Demo

![](demo.gif)

## Setup and run

This project is built using Flutter 1.22.3.

A valid API key of TMDb is needed for running the app. See [the docs of TMDb](https://developers.themoviedb.org/3/getting-started/introduction) for more info.

Once you downloaded the project, run in your terminal in the root of the project: `$ cp .env.example .env`. In the created .env file, fill out your TMDb API key like `TMDB_API_KEY=xxx`.

## Developing

The project depends on multiple code generators like the [Flutter freezed package](https://pub.dev/packages/freezed). Therefore when making changes, run: `$ flutter pub run build_runner watch --delete-conflicting-outputs` to watch for code changes and generate the corresponding classes.

## Unit testing

To run the unit tests, run: `$ flutter test`. Additionally, you could use VSCode or Android Studios Testing Suite.