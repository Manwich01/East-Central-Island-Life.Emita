robpoolsafe1 		 = 30000; 
robpoolsafe2 		 = 0;
robpoolsafe3 		 = 0;

while{true} do {
   if(robpoolsafe1 < maxinsafe)then{robpoolsafe1 = robpoolsafe1 + round random 8000; publicvariable "robpoolsafe1"};
   if(robpoolsafe2 < maxinsafe)then{robpoolsafe2 = robpoolsafe2 + round random 2000; publicvariable "robpoolsafe2"};
   if(robpoolsafe3 < maxinsafe)then{robpoolsafe3 = robpoolsafe3 + round random 2000; publicvariable "robpoolsafe3"};

   sleep 30;
};