##Adding Closed Captions support to FFmpeg's libraries and integrating with CCExtractor

####Personal Details
* **Name**: Pranav Vaish
* **Email**: pranav.vaish@gmail.com
* **University**: [Indian Institute of Technology, Kanpur, India](http://www.iitk.ac.in)
* **Degree-Major**: B.Tech in Computer Science and Engineering
* **Telephone**: (+91)7753058610 or (+91)9545702024
* **IRC**: vaishious@irc.freenode.net
* **Github Username**: [vaishious](https://github.com/vaishious)
* **Time Zone**: GMT(UTC) +0530

####Title
Adding Closed Captions support to FFmpeg's libraries and integrating with CCExtractor

####Abstract
My proposal is to use CCExtractor's libraries to add support for Closed Captions in FFmpeg. This will allow FFmpeg to handle closed caption streams during decoding and encoding of media. The main point to note is that this will help CCExtractor use FFmpeg for decoding video files with closed captions. This adds support for many video files which are currently not supported in CCExtractor's parser. (If time permits) I also hope to write code which can help in encoding the Closed Captions for the `libavcodec` library.

####Benefits to both Communities
The main motivation for this project is to improve upon the work done by Anshul last year in GSoC by giving back to the FFmpeg project which in turn also helps CCExtractor develop. This integration work will help both CCExtractor and FFmpeg. CCExtractor will be able to handle many more different types of files given the diversity of FFmpeg. FFmpeg will be able to treat the closed captions as a different stream and use filters on it. Also inter community bonding improves which can result in future code improvements for both.

####Detailed Description
* **Week 1:**  
 Get familiar with the internals of FFmpeg libraries. In particular the `libavformat`,`libavcodec` and `libavfilter` libraries after reading the [Doxygen documentation](https://www.ffmpeg.org/doxygen/trunk/index.html)
* **Week 2:**  
 Understand the code and familiarity with the CCExtractor parser. Think about working plan and skeleton code required for integration of the Closed Captions support in the decoder.
* **Week 3:**  
 Start with the demux process in the `libavformat` library. Have a basic working code. 
* **Week 4:**  
 Tweak the code, and make it more readable/understandable code. Writing testing for the new code and add documentation. Also try the code for multiple test files in different formats and measure performance.
* **Week 5:**  
 Refine code if necessary and also make changes to the working plan and general code outline.
* **Week 6 and 7(half):**  
 Work on decoding process for the `libavcodec` library. Multiple CC standards will need to be accounted for and taken care of. 
* **Week 7(half) and 8:**  
 Tweak code. Add documentation for the library. Write large amount of testing and measure performance of the library. Code should be optimized for fast run time.
* **Week 9:**  
 Add the Closed Caption support feature to `libavfilter`. For complex filtergraphs I need to make sure the algorithm can be changed to add CC support without errors on dependencies by testing.
* **Week 10 and 11:**  
 Also the `ffmpeg` command line tool should have support for the new feature. 
 Understand and become familiar with [Anshul's code](https://www.google-melange.com/gsoc/project/details/google/gsoc2014/anshul_bits/5757334940811264) for FFmpeg integration in CCExtractor. Edit the FFmpeg support in CCExtractor based on the new code for CC parser in FFmpeg.
* **Week 12:**  
 Do cleanup work. Buffer period.

####Future possible work with the communities
Encoding Closed Captions using the `libavcodec` can be a future prospective goal. Also CCExtractor can be used inside FFmpeg as a filter to convert the CC stream into a subtitle stream with subsequent filters from the `libavfilter` library for a much more powerful media tool.

####Availability
I want to work 40-45 hours from 1000 IST(0430 UTC) to 1800 IST(1230 UTC) Monday to Friday. Willing to work from 1100 IST(0530 UTC) to 1500 IST (1130 UTC) if required and behind on tasks. This is from 25th May to 26 July (8 weeks).

My university reopens on 27th of July. So, for the next 4 weeks I will work 30 hours a week. 1000 IST(0430 UTC) to 1800 IST(1230 UTC) on Saturday and Sunday. The remaining work hours will be communicated later depending on my University schedule.

I am also free from the 4th of May to the 16th of May and can get started on the project work early.
