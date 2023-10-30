#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/swathi/hrwros_ws/src/hrwros_factory_behaviors/flexbe_behaviors"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/swathi/hrwros_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/swathi/hrwros_ws/install/lib/python3/dist-packages:/home/swathi/hrwros_ws/build/flexbe_behaviors/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/swathi/hrwros_ws/build/flexbe_behaviors" \
    "/usr/bin/python3" \
    "/home/swathi/hrwros_ws/src/hrwros_factory_behaviors/flexbe_behaviors/setup.py" \
     \
    build --build-base "/home/swathi/hrwros_ws/build/flexbe_behaviors" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/swathi/hrwros_ws/install" --install-scripts="/home/swathi/hrwros_ws/install/bin"
