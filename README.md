# simpleVLCPlayer
For OpenRadar #46373720

# Make sure to replace the `MobileVLCKit.framework` 
- Use https://wiki.videolan.org/VLCKit/#Building_the_framework_for_iOS to generate the real `MobileVLCKit.framework`


Summary: Generate dSYM with MobileVLCKit hangs the system
- [Xcode 10] when project complied with custom framework, dsymutil causes run away memory pressure
- [Xcode 9] Not a problem

- Workaround: copy <dsymutil in Xcode9> into <dsymutil in Xcode10> will resolve the problem successfully.



Steps to Reproduce:
- Load the project [See Readme.md, https://github.com/theyongdai/simpleVLCPlayer]
- Archive the target

Expected Results:
- Finish archiving with a result

Actual Results:
- NEVER finished archiving in a reasonable amount of time due to a hanged SYSTEM!!

Version/Build:
- Xcode Version 10.1 (10B61)

Configuration:
- macOS 10.14.1 (18B75)
