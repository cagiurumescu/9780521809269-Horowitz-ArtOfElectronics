[Transient Analysis]
{
   Npanes: 2
   {
      traces: 6 {524291,0,"V(n002)"} {524293,0,"V(n003)"} {524296,0,"V(n004)"} {34603012,1,"I(D1)"} {34603014,1,"I(Rload)"} {34603015,1,"Ib(Q1)"}
      X: ('m',0,0,0.001,0.01)
      Y[0]: (' ',0,0,2,26)
      Y[1]: ('m',0,-0.01,0.01,0.11)
      Volts: (' ',0,0,0,0,2,26)
      Amps: ('m',0,0,0,-0.01,0.01,0.11)
      Log: 0 0 0
      Line: "V" 1 2 (0.00527646129541864,0.182456140350877) (0.00527646129541864,26.0912280701754)
      Line: "V" 1 2 (0.00557661927330174,0.273684210526316) (0.00557661927330174,26.0912280701754)
   },
   {
      traces: 2 {589837,0,"I(D1)*V(n002)"} {524290,1,"1+pow(10,400*time)"}
      X: ('m',0,0,0.001,0.01)
      Y[0]: ('m',0,-0.18,0.02,0.02)
      Y[1]: ('_',0,1,999.9,10000)
      Units: "W" ('m',0,0,0,-0.18,0.02,0.02)
      Units: "" ('_',1,0,0,1,999.9,10000)
      Log: 0 0 1
      Text: "" 2 (0.00645796064400716,12518.7502586253) ;Rload(Ohm) = 
   }
}

