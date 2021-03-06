##Adding Closed Captions support to FFmpeg's libraries and improving the integration with CCExtractor

####Personal Details
* **Name**: Pranav Vaish
* **Email**: pranav.vaish (at) gmail.com
* **University**: [Indian Institute of Technology, Kanpur, India](http://www.iitk.ac.in)
* **Degree-Major**: B.Tech in [Computer Science and Engineering](http://www.cse.iitk.ac.in/)
* **Telephone**: (+91)7753058610 or (+91)9545702024
* **IRC**: vaishious (at) irc.freenode.net
* **Github Username**: [vaishious](https://github.com/vaishious)
* **Time Zone**: GMT(UTC) +0530

####Title
Adding Closed Captions support to FFmpeg's libraries and improving the integration with CCExtractor

####Abstract
Currently FFmpeg can handle various streams in a file (audio, video, subtitle, data, attachments) but it does not have a very good parser for closed captions stream. My proposal is to use CCExtractor's libraries to add better support for Closed Captions in FFmpeg. This will also allow FFmpeg to handle decoding of closed caption streams. I also aim to add filters to remove or add closed captions streams from different file types.

####Benefits to both Communities
The main motivation for this project is to improve upon the work done by Anshul last year in GSoC by giving back to the FFmpeg project which in turn also helps CCExtractor develop. This integration work will help both CCExtractor and FFmpeg. CCExtractor will be able to handle many more different types of files given the diversity of FFmpeg. FFmpeg will be able to better handle the closed captions stream and apply quality filters on it. Also inter community bonding improves which can result in future code improvements for both.

####Detailed Description
#####Deliverables
1. The demultiplexer and multiplexer in `libavformat` gets the encoded data packets of the closed captions stream from a container containing multiple streams of different types.
2. Decoding of the data packets to get the raw decoded frames from the `libavcodec` library for the closed captions stream.
3. Make `libavfilter` capable of handling the filtergraphs containing filters for closed captions. Only the filter to remove closed captions will be implemented for now.

#####Optional
1. Ability to encode closed captions data to get the file containing closed captions.
2. Add the filter for adding closed captions from the raw data. Along with the filter to remove closed captions from a stream, this should also give us the option to copy the closed captions from one file to another.

#####Approach
Using the help of the CCExtractor parser (demultiplexer and decoder), a similar parser will be implemented into the FFmpeg libraries.
closed captions streams will be demultiplexed from all possible container formats by `libavformat` and added to the final AVFormatContext array.  
Individual codec supports will need to be added. Function(s) avcodec\_decode\_closedcaptions similar to avcodec\_decode\_video2 and others for audio and subtitles will need to be implemented for closed captions. The process structure of decoding followed after this will be similar to the structure already used by `libavcodec` for other streams. Functions for decoding individual codecs (from CCExtractor) will be modified to be compatbile with the other dependent functions used in `libavcodec`.  
The filter for removing closed captions from a stream will be done by simply demultiplexing and multiplexing all streams except the closed captions stream. In case the command line has more options (e.g.: to change the video codec), then an decoding and encoding step will also need to be added for the other streams. After checking if the current closed captions stream is compatible with the video codec and output container it can be multiplexed into the output file. 
Also the command line tool `ffmpeg` should support all the above changes and outputs on different options will be changed accordingly. Internals and output for various options on the command line will be supported.

**(Optional)** Functions for encoding individual codecs will be added. While applying filters closed captions will also be encoded using correct codec. Filter to copy closed captions from file A to file B can be done by demultiplexing both A and B into multiple streams. closed captions stream from A will then be decoded and encoded (using the correct codec) and then will be multiplexed with streams from B.  

#####Weekly plan
* **Week 1:**  
 Get familiar with the internals of FFmpeg libraries. In particular the `libavformat`,`libavcodec` and `libavfilter` libraries after reading the [Doxygen documentation](https://www.ffmpeg.org/doxygen/trunk/index.html)
* **Week 2:**  
 Understand the code and familiarity with the CCExtractor parser. Think about a working plan and skeleton code required for integration of the Closed Captions support in the parser.
* **Week 3:**  
 Start with adding support for the demux process for closed captions in the `libavformat` library. Have a basic working code.
* **Week 4:**  
 Writing testing for the new code and add documentation. Also try the code for multiple test files in different formats and measure performance.
* **Week 5:**  
 Refine code if necessary and also make changes to the working plan and general code outline.
* **Week 6 and 7(half):**  
 Work on decoding process for the `libavcodec` library. Multiple closed captions standards will need to be accounted for and taken care of. 
* **Week 7(half) and 8:**  
 Add documentation for the library. Write large amount of testing and measure performance of the library. Code should be optimized for fast run time.
* **Week 9:**  
 Add the filter to remove a closed captions stream in the `libavfilter` library. For complex filtergraphs I need to make sure the algorithm can be changed to add support for this filter without errors on dependencies by testing.
* **Week 10 and 11:**  
 Also the `ffmpeg` command line tool should have support for the new feature. 
 Understand and become familiar with [Anshul's code](https://www.google-melange.com/gsoc/project/details/google/gsoc2014/anshul_bits/5757334940811264) for FFmpeg integration in CCExtractor. Improve the FFmpeg support in CCExtractor based on the new code for closed captions parser in FFmpeg.
* **Week 12:**  
 Do cleanup work. Buffer period.

####Future possible work with the communities
Addition of closed captions parsing support to a project as big as FFmpeg along with addition and improvement of powerful filters (e.g. to use Google APIs to get a language translator for closed captions) which can work on a closed captions stream can help in automating closed captioning for all forms of video particularly video found online. Data parsed from media on TV which already have closed captions can have applications in the field of Natural Language Processing. The result is powerful and diverse APIs and libraries which can process all types of multimedia with closed captions.

####Availability
I want to work 40-45 hours from 1000 IST(0430 UTC) to 1800 IST(1230 UTC) Monday to Friday. Willing to work from 1100 IST(0530 UTC) to 1500 IST (1130 UTC) if required and behind on tasks. This is from 25th May to 26 July (8 weeks).

My university reopens on 27th of July. So, for the next 4 weeks I will work 30 hours a week. 1000 IST(0430 UTC) to 1800 IST(1230 UTC) on Saturday and Sunday. The remaining work hours will be communicated later depending on my University schedule.

I am also free from the 4th of May to the 16th of May and can get started on the project work early.

####Sample Exercises for CCExtractor
My work has been sent in an email to Carlos and on the [ccextractor-devel mailing list](https://sourceforge.net/p/ccextractor/mailman/message/33628415/).

####Other Information
* **Tools Familiar with:**  
 Very proficient and comfortable in using C,C++,git.  
 Comfortable working in Bash Scripting and Assembly programming if required for small parts of the project.
* **Projects done:**  
 [Ultimate Tic Tac Toe game](https://github.com/anandsinghkunwar/pransa-tictactoe): Designed a game and wrote the AI for the game. Game UI and rules were written in Python but the AI code(algorithms like Monte-Carlo and Minimax using Alpha-Beta pruning) was written in C.
* **Work Machine and Environment:**  
 Fedora 21-64 bit machine. Most of my C programming is done on the terminal using VIM.  
 Plan to work from home which has a stable 4Mbps internet connection 24/7.
* **Openness to work on different projects:**  
 I am comfortable working for a different project than the one I applied for as I appreciate the work done by CCExtractor for the Open Source community and I feel like giving back to the community.
