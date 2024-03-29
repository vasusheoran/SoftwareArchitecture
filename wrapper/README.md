# SoftwareArchitecture

##Safety and Fault Tolerance - G7
###2.7.1 Fault-Tolerance
AADL support error modeling and analysis. There are documentations and examples which you can go through.
The error modeling is done using Error Annex. This assignment is a toy example where you will construct three
components, namely src, mid, and dest. For simplicity, assume that the failure probabilities of src and dest are
0:01 and the failure probability of mid is 0:1.
Since this system is formed by chaining three modules, the system can fail if any one of the components fail.
Analyze this system by performing the safety analysis and show the system failure probability. Next, replicate the
component mid. Now, the system will work if one of the replicas of mid works. Model this scenario in AADL. Analyze
the failure probability of the system this time in AADL.
Model Show the architecture model for both the scenarios. Show how you have modeled the failure probabilities.
###Demonstration Run the analysis and show how failure probabilities are changing.
##2.7.2 Safety
The safety critical application runs inside a special kernel which enforces all the (or critical) I/O operations to pass
through the shell. While enforcing, the kernel can perform dynamic verication of safety specic properties. Create
an application container using Python (or Java) that arbitrarily makes i) ssh connections ii) http call (to an internet
site) iii) network access. It is not important to consider any algorithm, just random external calls in a loop, in a
periodic manner is good enough.
Now consider another container that acts as a safety wrapper of this application container. This container,
collocated with the application container, intercepts these I/O calls and selectively allows these calls to pass through.
Dene certain access rules for valid ssh, http, network access of your own. For instance, you must implement rules
such as: a) excessive calls: If network access, http or ssh call frequency > threshold, then do not allow such calls
to happen b) port: If the port for htto is not 8080, then do not allow this http call to take place c) address: if the
network calls are outside a particular subnet (you dene the subnet), then do not allow the network call to initiate.
Architecture First, identify the pattern that's most suitable here. Describe the architecture using appropriate
views.
###Dynamics Show and describe the most important usage scenario using a sequence diagram
