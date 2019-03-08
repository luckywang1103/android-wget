# android-wget
Port of wget to Android

add this directory to android/external/

modify android/build/soong/cc/config/global.go, mark two line
```
        noOverrideGlobalCflags = []string{
//              "-Werror=int-to-pointer-cast",
//              "-Werror=pointer-to-int-cast",
        }
```
and then compile, do mm under android/external/android-wget/

./wget --bind-address=192.168.1.147 http://www.gnu.org/software/wget/manual/wget.html
