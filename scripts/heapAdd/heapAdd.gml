var heldList = argument0;
var listDirec= argument1;
var addEnd = argument2;
var addDirec = argument3;


ds_list_add(heldList, addEnd);
ds_list_add(listDirec, addDirec);
var listSize = ds_list_size(heldList);
var curLoc = listSize - 1 ;
var curVal = heldList[| listSize-1];
var tempVal;
var endLoop = 1;


while(endLoop){
	if((heldList[| curLoc]) < (heldList[| floor((curLoc-1)/2)])){
		tempVal = heldList[| curLoc];
		heldList[| curLoc] = heldList[| floor((curLoc-1)/2)];
		heldList[| floor((curLoc-1)/2)] = tempVal;

		
		tempVal = listDirec[| curLoc];
		listDirec[| curLoc] = listDirec[| floor((curLoc-1)/2)];
		listDirec[| floor((curLoc-1)/2)] = tempVal;
		curLoc = floor((curLoc-1)/2);

	}else{
		endLoop = 0;
	}
}
