Step-01 - Repo-Setup - flutterToDo-checkpoint-01_
-------------------------------------------------------

The Repo-Setup Step-01 intent is to blahblahblah.

#. Create Repo-Setup for flutterToDo-checkpoint-01_ on github empty repo with README.md
#. Clone repo::

    catmini:2cld cat$ git clone https://github.com/2cld/flutterToDo.git

#. Create docs sub-dir::

    catmini:2cld cat$ cd flutterToDo/
    catmini:flutterToDo cat$ sphinx-quickstart

#. Edit docs/source/conf.py to classic (or what-ever your pref).
#. Copy in some baseline docs files::

    catmini:flutterToDo cat$ cd docs/
    catmini:docs cat$ cp ../../../gooberu/testwebfeatures/docs/source/help-build-docs.rst source/help-build-docs.rst
    catmini:docs cat$ cp ../../../gooberu/testwebfeatures/docs/source/help-quickstart-testwebfeatures.rst source/help-quickstart-flutterToDo.rst
    catmini:docs cat$ cp ../../../gooberu/testwebfeatures/docs/source/testwebfeatures-dev-detail-step.txt source/flutterToDo-dev-step.txt

#. Cleanup docs/source files for flutterToDo-repo_
#. Create step::

    catmini:docs cat$ cp source/flutterToDo-dev-step.txt source/flutterToDo-dev-step01.rst

#. Build docs and verify output::

    catmini:docs cat$ make html
    catmini:docs cat$ open build/html/index.html

#. Create flutter package test_todo::

    catmini:docs cat$ cd ..
    catmini:flutterToDo cat$ flutter create test_todo

#. Start up both iOS and Android simulators and plug in iOS and Android devices.
#. Checkout flutter devices::

    catmini:test_todo cat$ flutter devices
    iproxy not found. To work with iOS devices, please install ideviceinstaller. To install, run:
    brew install ideviceinstaller.
    4 connected devices:

    PH 1                      • PM1LHMA7B1300416                         • android-arm64 • Android 9 (API 28)
    Android SDK built for x86 • emulator-5554                            • android-x86   • Android 9 (API 28) (emulator)
    ios’s iPhone              • a2c9c149539cebbbdb00d70135e887ae6ef7937f • ios           • iOS 11.4.1
    iPhone 8                  • C85F9258-40EA-47F0-B292-0A1FE787C20B     • ios           • iOS 11.4 (simulator)
    catmini:test_todo cat$ 

#. Do as flutter tells you::

    catmini:test_todo cat$ brew install ideviceinstaller

#. Try each device::

    catmini:test_todo cat$ flutter run -d PM1LHMA7B1300416
    q to quit 
    catmini:test_todo cat$ flutter run -d emulator-555
    q to quit 
    catmini:test_todo cat$ flutter run -d C85F9258-40EA-47F0-B292-0A1FE787C20B

#. iOS on device had an issue::

    catmini:test_todo cat$ flutter run -d a2c9c149539cebbbdb00d70135e887ae6ef7937f
    iproxy not found. To work with iOS devices, please install ideviceinstaller. To install, run:
    brew install ideviceinstaller.
    Launching lib/main.dart on ios’s iPhone in debug mode...
    Signing iOS app for device deployment using developer identity: "iPhone Developer: Chris Trees (X3CZ3JB6H4)"
    Starting Xcode build...                                          
    ├─Assembling Flutter resources...                    6.8s
    └─Compiling, linking and signing...                 17.0s
    Xcode build done.                                           25.9s
    Installing and launching...                                      
    2018-08-23 15:06:08.705 ios-deploy[70580:2946829] [ !! ] Unable to locate DeviceSupport directory with suffix 'Symbols'. This probably means you don't have Xcode installed, you will need to launch the app manually and logging output will not be shown!
    Could not install build/ios/iphoneos/Runner.app on a2c9c149539cebbbdb00d70135e887ae6ef7937f.
    Try launching Xcode and selecting "Product > Run" to fix the problem:
    open ios/Runner.xcworkspace

    Error launching application on ios’s iPhone.
    catmini:test_todo cat$ 

#. Open xcode and "Product > Run"::

    catmini:test_todo cat$ open ios/Runner.xcworkspace

#. When Xcode comes up, the error (stop sign) lets you know that "Signing for Runner requires a development team."
#. Go to the Runner Project "General" page and select a Team.

#. Produce flutterToDo-checkpoint-01_ Repo-Setup ::

    macci:flutterToDo cat$ cd ~/2cld/flutterToDo/docs
    macci:docs cat$ vi source/flutterToDo-dev-detail.rst (update doc)
    macci:docs cat$ vi source/conf.py (Bump minor version to X.X.NN to match checkpoint-01)
    macci:docs cat$ make html 
    macci:docs cat$ open build/html/index.html (verify docs)
    macci:flutterToDo cat$ cd ~/2cld/flutterToDo
    macci:flutterToDo cat$ git add *
    macci:flutterToDo cat$ git commit -m "commit for flutterToDo-checkpoint-01 - Repo-Setup"
    macci:flutterToDo cat$ git tag flutterToDo-checkpoint-01
    macci:flutterToDo cat$ git push
    macci:flutterToDo cat$ git push origin flutterToDo-checkpoint-01
    
#. Verify checkpoint flutterToDo-checkpoint-01_


Resources

#. flutterToDo-checkpoint-01_
#. flutterToDo-repo_

.. _flutterToDo-checkpoint-01: https://github.com/2cld/flutterToDo/tree/flutterToDo-checkpoint-01
.. _flutterToDo-repo: https://github.com/2cld/flutterToDo