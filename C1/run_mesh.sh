#!/bin/bash
foamCleanTutorials
rm -r 0 > /dev/null 2>&1
rm *.obj > /dev/null 2>&1
blockMesh | tee log.blockMesh
surfaceFeatures | tee log.surfaceFeatures
#snappyHexMesh -overwrite | tee log.snappyHexMesh
snappyHexMesh | tee log.snappyHexMesh
checkMesh -latestTime | tee log.checkMesh
paraFoam -builtin 