var heldList = argument0;
var listDirec= argument1;


var listSize = ds_list_size(heldList)-1;
heldList[| 0] = heldList[| listSize];
ds_list_delete(heldList, listSize);
var curLoc = 0;
var curVal = 0;
var leftChild = 9999;
var rightChild = 99999;
var endLoop = 1;
while(endLoop){
	leftChild = heldList[| ((curLoc*2) + 1)];
	rightChild = heldList[| ((curLoc*2) + 2)];
	if(leftChild = undefined) leftChild = 99999;
	if(rightChild = undefined) rightChild = 99999;
	curVal = heldList[| curLoc];
	if(((curLoc*2 + 1) > listSize)||((curLoc*2 + 2) > listSize)){
		endLoop = 0;
	}else if((curVal < leftChild)&&(curVal < rightChild)){
		endLoop = 0;
	}else if(leftChild < rightChild){

		listDirec[| curLoc] = leftChild;
		listDirec[| ((curLoc*2) + 1)] = curVal;
		
		listDirec[| curLoc] = leftChild;
		listDirec[| ((curLoc*2) + 1)] = curVal;
		curLoc = (curLoc*2) + 1;
	}else{
		heldList[| curLoc] = rightChild;
		heldList[| ((curLoc*2) + 2)] = curVal;
		listDirec[| curLoc] = leftChild;
		listDirec[| ((curLoc*2) + 2)] = curVal;
		curLoc = (curLoc*2) + 2;
	}
}