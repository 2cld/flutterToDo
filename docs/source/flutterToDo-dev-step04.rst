Step-04 - catfood repo - flutterToDo-checkpoint-04_
-------------------------------------------------------

The catfood repo Step-04 intent is the app catfood which fetches food places and distances.

#. Create catfood repo for flutterToDo-checkpoint-04_
#. Based on Live code GeoCode dart-Conference2018-liveCode_
#. Create flutter package catfood::

    catmini:docs cat$ cd ..
    catmini:flutterToDo cat$ flutter create catfood

#. Run on iOS iPhone 8 simulator "flutter run -d C85F9258-40EA-47F0-B292-0A1FE787C20B" ::

    catmini:flutterToDo cat$ cd catfood
    catmini:catfood cat$ flutter run -d C85F9258-40EA-47F0-B292-0A1FE787C20B

#. Verify baseline app runs on simulator.
#. Cleanup codebase
    #. Delete test/widget_test.dart
    #. Cleanup lib/main.dart
    #. Create lib/catfood.dart
    #. Create lib/key.dart (get places-api-key_ )
    #. Create lib/places.dart
    #. Add images assets to pubspec.yaml::

        dependencies:
        flutter:
            sdk: flutter
        http: ^0.11.3

    #. Layout catfood.dart as desired
    #. Create lib/util/utils.dart to contain keys and defaults

#. Run places.dart api query from command line::

    catmini:catfood cat$ ~/dev/flutter/bin/cache/dart-sdk/bin/dart lib/places.dart

#. Had to enable a google cloud account and setup $300 in 'free credit' https://console.cloud.google.com/

#. Produce flutterToDo-checkpoint-04_ catfood repo ::

    macci:flutterToDo cat$ cd ~/2cld/flutterToDo/docs
    macci:docs cat$ vi source/flutterToDo-dev-detail.rst (update doc)
    macci:docs cat$ vi source/conf.py (Bump minor version to X.X.NN to match checkpoint-04)
    macci:docs cat$ make html 
    macci:docs cat$ open build/html/index.html (verify docs)
    macci:flutterToDo cat$ cd ~/2cld/flutterToDo
    macci:flutterToDo cat$ git add *
    macci:flutterToDo cat$ git commit -m "commit for flutterToDo-checkpoint-04 - catfood repo"
    macci:flutterToDo cat$ git tag flutterToDo-checkpoint-04
    macci:flutterToDo cat$ git push
    macci:flutterToDo cat$ git push origin flutterToDo-checkpoint-04
    
#. Verify checkpoint flutterToDo-checkpoint-04_

.. _flutterToDo-checkpoint-04: https://github.com/2cld/flutterToDo/tree/flutterToDo-checkpoint-04
.. _dart-Conference2018-liveCode: https://www.youtube.com/watch?v=iflV0D0d1zQ
.. _dart-Conference2018-liveCode-repo: https://github.com/mjohnsullivan/nomnom
.. _places-api-key: https://developers.google.com/places/web-service/get-api-key