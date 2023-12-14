# CNN_for_SLR
A trained Convolutional Neural Network implemented on ZedBoard Zynq-7000 FPGA.
Link to YouTube Video(s): https://www.youtube.com/watch?v=xoB--RFfy6I&feature=youtu.be

Project name: BeeBoard

Date: 30-Jul_2018

Version of uploaded archive: 1


University name: ISTANBUL TECHICAL UNIVERSITY

Supervisor name: Berna Ors Yalcin

Supervisor e-mail: Siddika.ors@itu.edu.tr

Participant(s):

Ilayda Yaman https://www.linkedin.com/in/ilayda-yaman-9bba0ab1/

M. Tarik Tamyurek 

Burak M. Gonultas https://www.linkedin.com/in/burak-mert-gonultas-94b045b1/


Email:

mttamyurek@gmail.com

gonultasbu [at] gmail [dot] com

Board used:  Digilent ZedBoard Zynq®-7000 ARM/FPGA SoC Development Board

Vivado Version: 2018.1

Brief description of project: A trained Convolutional Neural Network has been implemented on an FPGA evaluation board, ZedBoard Zynq-7000 FPGA, focused on fingerspelling recognition.

Description of archive (explain directory structure, documents and source files):

CNN folder includes Vivado files

MATLAB_Code folder includes files to verify the results obtained by the Vivado- Behavioral Synthesis

Instructions to build and test project

Step 1: Go to CNN folder for Vivado files of the project

Step 2: Run Behavioral Synthesis

Step 3: Obtain results for the hardware design

Step 4: Compare it with MATLAB results by running the "CNN.m" file inside the MATLAB_Code folder 

FAQ:

Q: Which dataset has been used for training the CNN model?

We used LSA16 Argentinian Sign Language dataset: http://facundoq.github.io/datasets/lsa16/

Q: What do the output values correspond to?

See http://facundoq.github.io/datasets/lsa16/.

Q: Are the weights shared in this repo reliable?

Nope.

Q: Are the designs reliable and do you think it's a good idea to just copy and paste into my design?

I wouldn't bet on it.

Q: Should I expect solid results when I run the project?

Can't promise. Please understand that this was a class project done by 3 undergrad students. But still we worked hard on it and were satisfied with our designs at the end of the project. So feel free to use it as a reference.
