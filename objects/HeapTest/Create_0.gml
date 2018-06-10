/// @description Insert description here
// You can write your code in this editor
listTest = ds_list_create();
listLoc = ds_list_create();
var numb = 4;
var numb2 = [numb, numb];
heapAdd(listTest, listLoc, numb, numb2);

var numb = 7;
var numb2 = [numb, numb];
heapAdd(listTest, listLoc, numb, numb2);
var numb = 1;
var numb2 = [numb, numb];
heapAdd(listTest, listLoc, numb, numb2);
var numb = 2;
var numb2 = [numb, numb];
heapAdd(listTest, listLoc, numb, numb2);
var numb = 3;
var numb2 = [numb, numb];
heapAdd(listTest, listLoc, numb, numb2);
var numb = 0;
var numb2 = [numb, numb];
heapAdd(listTest, listLoc, numb, numb2);

heapPrint(listTest);
heapPrint(listLoc);