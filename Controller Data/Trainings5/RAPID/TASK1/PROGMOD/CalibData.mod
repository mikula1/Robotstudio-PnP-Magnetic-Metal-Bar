MODULE CalibData
    PERS tooldata tGripper2:=[TRUE,[[0,0,270],[1,0,0,0]],[3,[0,0,100],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata wPallet:=[FALSE,TRUE,"",[[68.866,424.996,300],[1,0,0,0]],[[600,600,0],[1,0,0,0]]];
    CONST robtarget pTool1:=[[204.606994476,-1164.704110584,660],[0,-0.258819045,0.965925826,0],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pTool2:=[[-42.943005524,-974.204110584,491.401],[0,-0.707106781,0.707106781,0],[-2,0,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget pPick:=[[350.075,117.5,144],[0,-0.707106781,0.707106781,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pHome:=[[1135,0,1165],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pPlace:=[[1417.902,-460.91,600],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC Path_10()
        MoveL pPick,v1000,z100,tGripper2\WObj:=wPallet;
        MoveL pHome,v1000,z100,tGripper2\WObj:=wobj0;
        MoveL pTool2,v1000,z100,tool0\WObj:=wobj0;
        MoveL pHome,v1000,z100,tGripper2\WObj:=wobj0;
        MoveL pTool1,v1000,z100,tool0\WObj:=wobj0;
        MoveL pPlace,v1000,z100,tGripper2\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        MoveL pTool1,v1000,z100,tool0\WObj:=wobj0;
        MoveL pTool2,v1000,z100,tool0\WObj:=wobj0;
    ENDPROC
ENDMODULE