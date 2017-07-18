#!/bin/bash                                                                     

#PBS -l nodes=1:ppn=1                                                           
cd $PBS_O_WORKDIR

#---above two lines are important----------read about qsub to understand, in short nodes specify number of nodes requested, ppn is number of cores, PBD_O_WORKDIR cd's
#to current working directory..otw qsub by default starts in home directory


#echo $@                                                                        


#echo $logf                                                                     
#runExptFn is the matlab code and the rest are the arguments it takes
#stsz=20
#styp=30
#star=1

/opt/matlab/8.6/bin/matlab  -nodisplay -r "MAP_cal $stnno $styp $maxp ; exit" > $logf


