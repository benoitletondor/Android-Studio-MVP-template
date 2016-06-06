# Android Studio MVP Template

This is an Android Studio template for MVP. 

It is inspired by [u2020-mvp-android-studio-template](https://github.com/LiveTyping/u2020-mvp-android-studio-template) and follows [Antonio Leiva's MVP implementation guide for Android](http://antonioleiva.com/mvp-android/).

Here's the hierarchy it follows:

```
com.company.app
    +-- injection
    |   - ActivityScope
    |   - AppComponent
    |   - AppModule
    |   - MainViewComponent
    |   - MainViewModule
    +-- interactor
    |   +-- impl
    |       - MainViewInteractorImpl
    |   - BaseInteractor
    |   - MainViewInteractor
    +-- presenter
    |   +-- impl
    |       - MainViewPresenterImpl
    |   - BasePresenter
    |   - MainViewPresenter
    +-- view
    |   +-- impl
    |       - BaseActivity
    |       - MainActivity
    |   - MainView
    | - YourApp
```

Disclaimer: This is a work in progress made for my own needs.

## Prerequisites

You must use [Dagger 2](http://google.github.io/dagger/) for dependency injection and `AppCompat` for annotations and base classes.

## Installation

#### For Mac:

Just copy all files to `$ANDROID_STUDIO_FOLDER$/Contents/plugins/android/lib/templates/activities/MVP`

#### For Windows:

Just copy all files to `$ANDROID_STUDIO_FOLDER$\plugins\android\lib\templates\activities\MVP`

## How to use

First select your root package folder and then create a new `MVP Activity`:

![How to use](static/howtouse.png "How to use")

It will create:

- An `Activity`
- A layout for your Activity
- A `Component` and a `Module` for Dagger 2 injection
- A `View` interface for your Activity
- A `Presenter` interface and default implementation class
- An `Interactor` interface and default implementation class for your model

If you select to generate the hierarchy boilerplate, it will also generate an `App` class that you should use as your Application, an `ActivityScope` for injection, a `BaseActivity`, a `BasePresenter` and a `BaseInteractor`.

> It's important that you **create it from the root package**, otherwise it will re-create the whole MVP hierarchy under your subpackage which is not what you want.

## TODO

- Better hierarchy management
- Manage Fragment

## License

    Copyright 2016 Benoit LETONDOR

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
