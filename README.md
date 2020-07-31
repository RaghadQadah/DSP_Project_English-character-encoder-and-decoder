# DSP_Project
English character encoder and decoder
# DSP_Project
English character encoder and decoder

Design, Implement and test an English alphabet character voice-frequency encoder which represents every English character by a 
combination of three voice-band frequency components (low, middle and high).For example, it encodes character ‘a’ by signal contains
frequencies (400HZ, 1000HZ, 2000Hz).
Therefore, given the frequency combination for each character, you should be able to encode any character to the corresponding signal 
contacting the corresponding frequencies (see table below).

Table 1.1 show you the frequencies (400HZ-4000Hz) for each character. 
You may assume duration of each character signal is no more than 40ms.

      Table 1.1: Encoding frequencies for each English character
  
  ![Capture](https://user-images.githubusercontent.com/65376456/89062467-2b545880-d36f-11ea-9c7c-16da87541649.PNG)


To sum up, in this phase you have to design the following:
1. Implement the English character encoder using the above description and specifications.
2. Build a GUI (graphical user interface) by which the user can encode any English string (sentence) 
and the system should generate the corresponding signal for the given sentence.
3. Two choices are available for the generated signal:
 Play the generated signal so that the user can hear it.
 Save the generated signal as a (.wav) audio file in the current working directory.


Phase Two (Due on Sat. 16/5/2020):
In this phase you have to design, implement and test a decoder for the system in part one, which can recover the text string from the encoded multi-frequency signal. Simply,
your system should take an audio file (.wav) as an input and recognizes the encoded string and display it on the GUI screen.
You must use the following two approaches to build your decoder:
Use frequency analysis (e.g. Fourier transform) of the input signal to determine which frequencies that have the highest amplitudes in each 40ms and decode the character from them.
Use bandpass Filters, so that you design filters represent the given frequencies and pass the input signal through them to pick the frequencies that passes and ones that rejected by the filters, then determine the frequencies in each 40ms.
To sum up, in this phase you have to design the following:
1. Two systems, each can decode any sequence of tones to the corresponding alphabetic English characters. One of the systems uses frequency analysis and the second built by using filters.
2. Build a GUI so that the user can upload any audio file and a run button to be able to convert the sequence of tones in the audio into corresponding characters and show the result on a text box.
3. Sufficiently test your two systems with different number of encoded strings with different length, and report the accuracy of your systems. Accuracy is the number of correctly recognized letters divided by the string length.
Evaluation:
For the second phase, I’ll provide you with a set of encoded testing strings in the same way described in phase one. The first team/s that can recognized all provided testing strings correctly will have a bonus!
Project Deliverables:
1- Mini-report as described above.
2- System implementation (source code) and a demonstration of each phase as described above.
You can use any programming language you prefer for implementing your project. However, I highly recommend MATLAB because it have many useful functions.
Abualsoud Hanani
April 20th 2020
