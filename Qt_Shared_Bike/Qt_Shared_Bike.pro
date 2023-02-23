TEMPLATE = app
TARGET = minibrowser
QT += gui webchannel widgets websockets
QT += androidextras
QT += core network
QT += quick
QT += qml webview

HEADERS += \
    UserLogin.h \
    bike.pb.h \
    global_def.h \
    networkinterface.h \
    websocketclientwrapper.h \
    websockettransport.h

SOURCES += \
    UserLogin.cpp \
    bike.pb.cc \
    main.cpp \
    networkinterface.cpp \
    websocketclientwrapper.cpp \
    websockettransport.cpp

unix:!macx: LIBS += -L$$PWD/../QtShareBikeProject/protobuf_arm_3.6.0_clang/lib/ -lprotobuf

INCLUDEPATH += $$PWD/../QtShareBikeProject/protobuf_arm_3.6.0_clang/include
DEPENDPATH += $$PWD/../QtShareBikeProject/protobuf_arm_3.6.0_clang/include

ANDROID_EXTRA_LIBS = $$PWD/../QtShareBikeProject/protobuf_arm_3.6.0_clang/lib/libprotobuf.so

DISTFILES += \
    android/AndroidManifest.xml \
    android/assets/bikeManage.html \
    android/assets/images/bike_32.ico \
    android/assets/images/bike_48.ico \
    android/assets/images/end.ico \
    android/assets/images/start.ico \
    android/assets/map.html \
    android/assets/qwebchannel.js \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/drawable-hdpi/icon.png \
    android/res/drawable-ldpi/icon.png \
    android/res/drawable-mdpi/icon.png \
    android/res/values/libs.xml \
    android/src/an/qt/qtWithJava/MyJavaClass.java \
    ios/Info.plist

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

RESOURCES += \
    qml.qrc
