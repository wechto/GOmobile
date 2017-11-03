clear
obj_btss=btss([5 5],[0 0],8);
obj_btss.show;
hold on
obj_btss.gbts{1,2}.show('Color','r','LineWidth',2);
obj_btss.gbts{3,4}.show('Color','r','LineWidth',2);


obj_user=user([2 1],3);
obj_user.show('Color','r','LineWidth',2);
obj_user=user([5,5],4);
obj_user.show;
obj_user=user([7,-2]);
obj_user.show;
