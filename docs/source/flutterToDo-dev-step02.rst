Step-02 - ToDo List Resources - flutterToDo-checkpoint-02_
----------------------------------------------------------

.. raw:: html

    <div style="position: relative; padding-bottom: 5.25%; height: 0; overflow: hidden; max-width: 100%; height: auto;">
    <iframe width="300" height="480" src="https://www.youtube.com/embed/SNaED5hY6XY" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
    </div>

The ToDo List Resouces Step-02 intent is a basic ToDo list app to verify flutter dev build env.

#. Create ToDo List Resouces for flutterToDo-checkpoint-02_
#. flutterToDo-youTubeRef-Part01_ - View Screenshot
#. flutterToDo-youTubeRef-Part02_ - Create Structure
    #. create lib/model/ dir
    #. create lib/util/ dir
    #. create lib/ui/ dir
    #. create lib/ui/home.dart
    #. create lib/ui/catodo_screen.dart
    #. create lib/main.dart
#. flutterToDo-youTubeRef-Part03_ - Create lib/model/catodo_item.dart
#. flutterToDo-youTubeRef-Part04_ - Create lib/util/database-client.dart
#. flutterToDo-youTubeRef-Part05_ - Item Create (Crud)
#. flutterToDo-youTubeRef-Part06_ - Item Read (cRud)
#. flutterToDo-youTubeRef-Part07_ - Fix Display Issues (nesting)
#. flutterToDo-youTubeRef-Part08_ - Item Delete (cruD)
#. flutterToDo-youTubeRef-Part09_ - Item Update (crUd)
#. Test on various devices
    #. List flutter devices "flutter devices" ::

        catmini:test_todo cat$ flutter devices
        iproxy not found. To work with iOS devices, please install ideviceinstaller. To install, run:
        brew install ideviceinstaller.
        4 connected devices:

        PH 1                      • PM1LHMA7B1300416                         • android-arm64 • Android 9 (API 28)
        Android SDK built for x86 • emulator-5554                            • android-x86   • Android 9 (API 28) (emulator)
        ios’s iPhone              • a2c9c149539cebbbdb00d70135e887ae6ef7937f • ios           • iOS 11.4.1
        iPhone 8                  • C85F9258-40EA-47F0-B292-0A1FE787C20B     • ios           • iOS 11.4 (simulator)
        catmini:test_todo cat$ 

    #. Run on Android Nexus 5 emulator "flutter run -d emulator-5554"
        #. Was VERY slow... lots of stuff in window log
        #. Status WORKING
    #. Run on iOS iPhone 8 simulator "flutter run -d C85F9258-40EA-47F0-B292-0A1FE787C20B"
        #. Worked faster than the Android simulator
        #. Status WORKING
    #. Run on Android PH 1 device "flutter run -d PM1LHMA7B1300416"
        #. Worked Great... even Voice input works
        #. Status WORKING
    #. Run on iOS iPhone 6 device "flutter run -d a2c9c149539cebbbdb00d70135e887ae6ef7937f"
        #. Worked Great... even Voice input works
        #. Status WORKING
        #. Made video demo of flutterToDo-test_todo-app_
    
#. Produce flutterToDo-checkpoint-02_ ToDo List Resouces ::

    macci:flutterToDo cat$ cd ~/2cld/flutterToDo/docs
    macci:docs cat$ vi source/flutterToDo-dev-detail.rst (update doc)
    macci:docs cat$ vi source/conf.py (Bump minor version to X.X.NN to match checkpoint-02)
    macci:docs cat$ make html 
    macci:docs cat$ open build/html/index.html (verify docs)
    macci:flutterToDo cat$ cd ~/2cld/flutterToDo
    macci:flutterToDo cat$ git add *
    macci:flutterToDo cat$ git commit -m "commit for flutterToDo-checkpoint-02 - ToDo List Resouces"
    macci:flutterToDo cat$ git tag flutterToDo-checkpoint-02
    macci:flutterToDo cat$ git push
    macci:flutterToDo cat$ git push origin flutterToDo-checkpoint-02
    

Resources

#. Verify checkpoint flutterToDo-checkpoint-02_
#. Dart Conference 2018 dart-Conference2018_
#. Live code GeoCode dart-Conference2018-liveCode_
#. Live code repo dart-Conference2018-liveCode-repo_
#. WhatUpClone dart-whatsapp-clone-article_
#. WhatsUpClone youtube dart-whatsapp-clone-youtube_
#. WhatsUpClone repo dart-whatsapp-clone-repo_
#. WhatsUpClone camera dart-whatsapp-clone-camera_
#. ImagePicker dart-imagePicker-package_
#. flutter_image_
#. dart-async-loader_
#. flutter_router_
#. flutter_serializer_
#. This youTube App Demo on iOS - flutterToDo-test_todo-app_
#. flutterToDo-youTubeRef-Part01_ - View Screenshot
#. flutterToDo-youTubeRef-Part02_ - Create Structure
#. flutterToDo-youTubeRef-Part03_ - Create lib/model/catodo_item.dart
#. flutterToDo-youTubeRef-Part04_ - Create lib/util/database-client.dart
#. flutterToDo-youTubeRef-Part05_ - Item Create (Crud)
#. flutterToDo-youTubeRef-Part06_ - Item Read (cRud)
#. flutterToDo-youTubeRef-Part07_ - Fix Display Issues (nesting)
#. flutterToDo-youTubeRef-Part08_ - Item Delete (cruD)
#. flutterToDo-youTubeRef-Part09_ - Item Update (crUd)

.. _flutterToDo-checkpoint-02: https://github.com/2cld/flutterToDo/tree/flutterToDo-checkpoint-03
.. _dart-Conference2018: https://www.youtube.com/playlist?list=PLOU2XLYxmsIIJr3vjxggY7yGcGO7i9BK5
.. _dart-Conference2018-liveCode: https://www.youtube.com/watch?v=iflV0D0d1zQ
.. _dart-Conference2018-liveCode-repo: https://github.com/mjohnsullivan/nomnom
.. _dart-whatsapp-clone-article: https://medium.com/@Nash0x7E2/building-whatsapp-ui-with-flutter-io-and-dart-1bb1e83e7439
.. _dart-whatsapp-clone-youtube: https://www.youtube.com/watch?v=2Tyrofn6zPg&feature=youtu.be
.. _dart-whatsapp-clone-repo: https://github.com/iampawan/FlutterWhatsAppClone
.. _dart-whatsapp-clone-camera: https://www.youtube.com/watch?v=ZkpHzbOm-s0
.. _dart-imagePicker-package: https://www.youtube.com/watch?v=kNe4Fw3zkKY
.. _flutter_image: https://pub.dartlang.org/packages/flutter_image
.. _dart-async-loader: https://pub.dartlang.org/packages/async_loader
.. _flutter_router: https://pub.dartlang.org/packages/fluro
.. _flutter_serializer: https://github.com/Jaguar-dart/jaguar_serializer
.. _flutterToDo-test_todo-app: https://youtu.be/SNaED5hY6XY
.. _flutterToDo-youTubeRef-Part01: https://www.youtube.com/watch?v=1Tv1_K3WDuE
.. _flutterToDo-youTubeRef-Part02: https://www.youtube.com/watch?v=tT-5cx3C99o
.. _flutterToDo-youTubeRef-Part03: https://www.youtube.com/watch?v=CvoP3GleIao
.. _flutterToDo-youTubeRef-Part04: https://www.youtube.com/watch?v=iiXOo3kbQgU
.. _flutterToDo-youTubeRef-Part05: https://www.youtube.com/watch?v=nDnA9KZQP_U
.. _flutterToDo-youTubeRef-Part06: https://www.youtube.com/watch?v=xJSestoFlJ8
.. _flutterToDo-youTubeRef-Part07: https://www.youtube.com/watch?v=O5JkuUyrZg4
.. _flutterToDo-youTubeRef-Part08: https://www.youtube.com/watch?v=On6PnZj4ll8
.. _flutterToDo-youTubeRef-Part09: https://www.youtube.com/watch?v=q7J4WVNkA-U
