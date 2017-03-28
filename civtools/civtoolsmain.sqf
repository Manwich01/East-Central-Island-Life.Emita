_pathtoCall911 = "civtools\911\";
_pathtofaq = "civtools\faq\";

_EXECscript2 = 'player execVM "'+_pathtoCall911+'%1"';
_EXECscript3 = 'player execVM "'+_pathtofaq+'%1"';
//Title Options
civmenu= [  ["",true], 
            ["Menu", [2], "#USER:civmenu", -5, [["expression", ""]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
         ];
//Main Options
civmenu= [  ["",true],
		      ["Call 911!", [2], "#USER:Call911", -5, [["expression", ""]], "1", "1"],
            ["FAQ", [3], "#USER:FAQ", -5, [["expression", ""]], "1", "1"],
            ["", -1, "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
         ];
         
//911 Options
Call911= [  ["",true],
            ["911 Calling Options", [2],  "", -5, [["expression", format[_EXECscript2,""]]], "1", "1"],		
            ["-------------------", [3],  "", -5, [["expression", format[_EXECscript2,""]]], "1", "1"],
            ["Kidnapping", [4],  "", -5, [["expression", format[_EXECscript2,"kidnapping.sqf"]]], "1", "1"],
            ["Grand Theft Auto", [5],  "", -5, [["expression", format[_EXECscript2,"gta.sqf"]]], "1", "1"],
            ["Rape", [6],  "", -5, [["expression", format[_EXECscript2,"rape.sqf"]]], "1", "1"],
            ["House Burglary", [7],  "", -5, [["expression", format[_EXECscript2,"houseburg.sqf"]]], "1", "1"],
            ["Robbery", [8],  "", -5, [["expression", format[_EXECscript2,"robbery.sqf"]]], "1", "1"],
            ["Other", [9], "", -5, [["expression", format[_EXECscript2,"unknown.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
         ];
//Frequently Asked QUestions
FAQ= [   ["",true],
         ["How can I be a cop?", [2],  "", -5, [["expression", format[_EXECscript3,"q1.sqf"]]], "1", "1"],
         ["Where can I buy a license?", [3],  "", -5, [["expression", format[_EXECscript3,"q2.sqf"]]], "1", "1"],
         ["What is the Teamspeak 3 Info?", [4],  "", -5, [["expression", format[_EXECscript3,"q3.sqf"]]], "1", "1"],
         ["What is the website address?", [5],  "", -5, [["expression", format[_EXECscript3,"q4.sqf"]]], "1", "1"],
         ["What's the speed limit?", [6],  "", -5, [["expression", format[_EXECscript3,"q5.sqf"]]], "1", "1"],
         ["Am I Allowed to steal a cop car?", [7],  "", -5, [["expression", format[_EXECscript3,"q6.sqf"]]], "1", "1"],
         ["What's the best way to make money?", [8],  "", -5, [["expression", format[_EXECscript3,"q7.sqf"]]], "1", "1"],
         ["", [-1], "", -5, [["expression", ""]], "1", "0"],
         ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
      ];
      
showCommandingMenu "#USER:civmenu";