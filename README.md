Detecting the sleeping state of the human brain

Introduction :
*) Detection of drowsiness(stage 1 of sleep) of a person while performing actions requiring complete attention like driving a car
*) Brain emits electrical signals at all times at different frequencies and intensities
*) The brain signals detected by EEG will give information about the state of the brain
*) The data derived from EEG can be used to detect stages of sleep

This is a simple binary classification problem.

*) Wakefulness:
		Alpha wave activity.
		EOG-H – High amplitude

*) Sleeping : 
		Alpha wave activity disappears.
		EOG-H:Low amplitude 

Dataset description : (Dataset - 	http://www.physionet.org/physiobank/database/sleep-edfx/)
*) The EEG signals are available in .edf format (European Data Format)
*) EEG signals of brain are classified as follows based on the position of electrodes on the scalp:
a) EEG Fpz-Cz
b) EEG Pz-Oz
c) EOG Horizontal
d) Resp oro-nasal
e) EMG submental
f) Temp Rectal
g) Event marker


Processing the dataset :

*) EDFBrowser- This software  is used to read datasets which contain analogue signals taken from seven different parts of the brain.
*) The signals are converted to .txt format, which now contains the strength of the signals in uV for every 0.5 s interval.
*) Octave is used to manipulate data represented as matrices.
*) Logistic Regression is used to obtain a plot of strength of the two features and the output represented with different points.


