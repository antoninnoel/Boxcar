# Boxcar

To use it : 
- build it as a framework on any **physical device** ( architectures **lipo -info Boxcar** should be i386 x86_64 )
- get the **path** of the result .framework 
- build it as a framework on any **simulator** ( architectures **lipo -info Boxcar** should be armv7 arm64 )
- get the **path** of the result .framework

Then merge both architectures : 
run **lipo -create path/to/physical path/to/simulator -output Boxcar**

then copy the whole .framework folder with the new Boxcar binary into your project.

## Do not forget to "Embed it" in your project general library and framework.
