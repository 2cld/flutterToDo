Step-03 - Weather App Resources - flutterToDo-checkpoint-03_
------------------------------------------------------------

The Weather App Step-03 intent is to create a weatherApp that uses a json API to display local weather.

#. Create Weather App Resouces for flutterToDo-checkpoint-03_

#. Create flutter package catcast::

    catmini:docs cat$ cd ..
    catmini:flutterToDo cat$ flutter create catcast

#. Run on iOS iPhone 8 simulator "flutter run -d C85F9258-40EA-47F0-B292-0A1FE787C20B" ::

    catmini:flutterToDo cat$ cd catcast
    catmini:catcast cat$ flutter run -d C85F9258-40EA-47F0-B292-0A1FE787C20B

#. Verify baseline app runs on simulator.
#. Cleanup codebase
    #. Delete test/widget_test.dart
    #. Cleanup lib/main.dart
    #. Create lib/ui/catcast.dart
    #. Create images/sunnycat.png raincat.png snowcat.png light_rain.png
    #. See images at unsplash_ https://unsplash.com
    #. See png at tinypng_ https://tinypng.com
    #. Add images assets to pubspec.yaml::

        assets:
            - images/sunnycat.png
            - images/raincat.png
            - images/snowcat.png
            - images/light_rain.png

    #. Layout catcast.dart as desired
    #. Create lib/util/utils.dart to contain keys and defaults

#. Run app just to verify build.
#. Setup API on OpenWeatherMap_ https://openweathermap.org 
#. Get a Key OpenWeatherMap-API-Key_ https://openweathermap.org/appid
#. Add Future to catcast.dart code::

    Future<Map> getWeather(String appId, String, city) async {
        String apiUrl = 'http://api.openweather.org/data/2.5/weather?q=$city&appid=''${util.appId}
    }

#. Produce flutterToDo-checkpoint-03_ ToDo List Resouces ::

    macci:flutterToDo cat$ cd ~/2cld/flutterToDo/docs
    macci:docs cat$ vi source/flutterToDo-dev-detail.rst (update doc)
    macci:docs cat$ vi source/conf.py (Bump minor version to X.X.NN to match checkpoint-02)
    macci:docs cat$ make html 
    macci:docs cat$ open build/html/index.html (verify docs)
    macci:flutterToDo cat$ cd ~/2cld/flutterToDo
    macci:flutterToDo cat$ git add *
    macci:flutterToDo cat$ git commit -m "commit for flutterToDo-checkpoint-03 - Weather App Resources"
    macci:flutterToDo cat$ git tag flutterToDo-checkpoint-03
    macci:flutterToDo cat$ git push
    macci:flutterToDo cat$ git push origin flutterToDo-checkpoint-03
    
Resources

#. Verify checkpoint flutterToDo-checkpoint-03_
#. unsplash_ https://unsplash.com
#. tinypng_ https://tinypng.com
#. OpenWeatherMap_ https://openweathermap.org
#. OpenWeatherMap-API-Key_ https://openweathermap.org/appid
#. weatherApp-youTubeRef-Part01_ - Setup
#. weatherApp-youTubeRef-Part02_ - Get a API Key
#. weatherApp-youTubeRef-Part03_ - Build up Display Page
#. weatherApp-youTubeRef-Part04_ - Put in Display Data Widgets
#. weatherApp-youTubeRef-Part05_ - Connect up API
#. weatherApp-youTubeRef-Part06_ - page nav 1
#. weatherApp-youTubeRef-Part07_ - page nav 2
#. weatherApp-youTubeRef-Part08_ - page nav 3
#. weatherApp-youTubeRef-Part09_ - page nav 4
#. weatherApp-youTubeRef-Part10_ - Multiple Cities Page future
#. weatherApp-youTubeRef-Part11_ - Structure Change City page and pass new city update
#. weatherApp-youTubeRef-Part12_ - Add more API data to display

.. _flutterToDo-checkpoint-03: https://github.com/2cld/flutterToDo/tree/flutterToDo-checkpoint-03
.. _weatherApp-youTubeRef-Part01: https://www.youtube.com/watch?v=Fh6KecgjNYU
.. _weatherApp-youTubeRef-Part02: https://www.youtube.com/watch?v=uR0Xrc7UYVY
.. _weatherApp-youTubeRef-Part03: https://www.youtube.com/watch?v=yKqPNRwUotY
.. _weatherApp-youTubeRef-Part04: https://www.youtube.com/watch?v=23AwlXjC9EU
.. _weatherApp-youTubeRef-Part05: https://www.youtube.com/watch?v=4-BMGzzccQk
.. _weatherApp-youTubeRef-Part06: https://www.youtube.com/watch?v=dSURxV9Ptys
.. _weatherApp-youTubeRef-Part07: https://www.youtube.com/watch?v=RoDgQykJxK4
.. _weatherApp-youTubeRef-Part08: https://www.youtube.com/watch?v=moMrqB2uZZ8
.. _weatherApp-youTubeRef-Part09: https://www.youtube.com/watch?v=A2hRchn6N1g
.. _weatherApp-youTubeRef-Part10: https://www.youtube.com/watch?v=kr29ReLcDk4
.. _weatherApp-youTubeRef-Part11: https://www.youtube.com/watch?v=qF7Iw3l-Fww
.. _weatherApp-youTubeRef-Part12: https://www.youtube.com/watch?v=iUTyJVeWmfM

.. _OpenWeatherMap: https://openweathermap.org
.. _OpenWeatherMap-API-Key: https://openweathermap.org/appid
.. _unsplash: https://unsplash.com
.. _tinypng: https://tinypng.com