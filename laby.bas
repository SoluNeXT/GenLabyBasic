0 run60000
10 x=38:y=23
20 dim l(x-1,y-1):dim d(4):dim z((x-1)*(y-1))
30 print"e“"
40 v=0:fori=-1tox:j=-1:gosub50000:j=y:gosub50000:next
50 forj=0toy-1:i=-1:gosub50000:i=x:gosub50000:next
60 forj=0toy-1:fori=0tox-1:l(i,j)=0:v=l(i,j):gosub50000:nexti:nextj
70 r=rnd(ti):px=int(rnd(1)*x):py=int(rnd(1)*y)
80 l(px,py)=1:v=l(px,py):i=px:j=py:gosub50000
100 nd=0
110 ifpx>0thenifl(px-1,py)=0thend(nd)=1:nd=nd+1
120 ifpx<x-1thenifl(px+1,py)=0thend(nd)=2:nd=nd+1
130 ifpy>0thenifl(px,py-1)=0thend(nd)=3:nd=nd+1
140 ifpy<y-1thenifl(px,py+1)=0thend(nd)=4:nd=nd+1
150 if nd=0 then 1000
200 r=int(rnd(1)*nd)
210 ifd(r)=1then300
220 ifd(r)=2then400
230 ifd(r)=3then500
240 ifd(r)=4then600
250 print"erreur 250":end
300 rem gauche
310 l(px,py)=l(px,py)or1
315 gosub 900
320 px=px-1
330 l(px,py)=l(px,py)or4
340 gosub900
350 goto 100
400 rem droite
410 l(px,py)=l(px,py)or4
415 gosub 900
420 px=px+1
430 l(px,py)=l(px,py)or1
440 gosub900
450 goto 100
500 rem haut
510 l(px,py)=l(px,py)or2
515 gosub 900
520 py=py-1
530 l(px,py)=l(px,py)or8
540 gosub900
550 goto 100
600 rem bas
610 l(px,py)=l(px,py)or8
615 gosub 900
620 py=py+1
630 l(px,py)=l(px,py)or2
640 gosub900
650 goto 100
900 rem affichage
910 i=px:j=py:v=l(px,py):gosub50000
920 return
1000 rem recherche nouveau point de depart
1010 nz=0
1020 fori=0tox-1
1030 forj=0toy-1
1040 if l(i,j)=0then1200
1050 if i>0 then if l(i-1,j)=0 then 1150
1060 if j>0 then if l(i,j-1)=0 then 1150
1070 if i<x-1 then if l(i+1,j)=0 then 1150
1080 if j<y-1 then if l(i,j+1)=0 then 1150
1140 goto 1200
1150 z(nz)=i+j*x
1160 nz=nz+1
1200 nextj
1210 nexti
1300 if nz=0 then 1400
1305 r=int(rnd(1)*nz)
1310 py=int(z(r)/x)
1320 px=z(r)-py*x
1330 goto 100
1400 rem fini...
1410 r=int(rnd(1)*y)
1420 l(0,r)=l(0,r)or1
1430 i=0:j=r:v=l(0,r):gosub50000
1440 i=-1:j=r:v=5:gosub50000
1510 r=int(rnd(1)*y)
1520 l(x-1,r)=l(x-1,r)or4
1530 i=x-1:j=r:v=l(x-1,r):gosub50000
1540 i=x:j=r:v=5:gosub50000
1900 goto 1900
10000 end
50000 c=1065+i+40*j
50010 ifv= 0thenpokec,160:return
50020 ifv= 1thenpokec,238:return
50030 ifv= 2thenpokec,253:return
50040 ifv= 4thenpokec,237:return
50050 ifv= 8thenpokec,240:return
50060 ifv= 6thenpokec,237:return
50070 ifv= 7thenpokec,241:return
50080 ifv= 3thenpokec,253:return
50090 ifv= 5thenpokec,192:return
50100 ifv= 9thenpokec,238:return
50110 ifv=10thenpokec,194:return
50120 ifv=11thenpokec,243:return
50130 ifv=12thenpokec,240:return
50140 ifv=13thenpokec,242:return
50150 ifv=14thenpokec,235:return
50160 ifv=15thenpokec,219:return
50990 pokec,32
50999 return
60000 save"@0:laby ok",8:run10
