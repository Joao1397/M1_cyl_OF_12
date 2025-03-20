#!/bin/bash

foamCleanTutorials
rm -r 0 > /dev/null 2>&1
rm *.obj > /dev/null 2>&1
blockMesh 					| tee log.blockMesh
surfaceFeatures 				| tee log.surfaceFeatures
#snappyHexMesh -noFunctionObjects -overwrite     | tee log.snappyHexMesh
snappyHexMesh -noFunctionObjects                | tee log.snappyHexMesh
checkMesh -latestTime				| tee log.checkMesh	
