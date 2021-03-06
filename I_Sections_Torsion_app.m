(* ::Package:: *)

(* ::Input:: *)
(*ClearAll["Global`*"];*)
(**)
(*Manipulate[*)
(*Module[{*)
(*},*)
(**)
(**)
(*P1 = {-B1/2, H/2-tf1/2};*)
(*P2 = {B1/2, H/2-tf1/2};*)
(*P3 = {0, H/2-tf1/2};*)
(*P4={0,-H/2+tf2/2};*)
(*P5 = {-B2/2, -H/2+tf2/2};*)
(*P6={B2/2,-H/2+tf2/2};*)
(*points={P1,P2,P3,P4, P5, P6};*)
(**)
(*sec=*)
(*RegionUnion[*)
(*ImplicitRegion[-B1/2<x<B1/2&& H/2-tf1<y<H/2,{x,y}],*)
(*ImplicitRegion[-B2/2<x<B2/2&& -H/2<y<-H/2+tf2,{x,y}],*)
(*ImplicitRegion[-tw/2<x<tw/2 && -H/2+tf2<y<H/2-tf1, {x,y}]*)
(*];*)
(*PG = {xG, yG} = RegionCentroid[sec]//Chop;*)
(**)
(**)
(*x1[s1_] = -B1/2+s1;*)
(*x2[s2_] = s2;*)
(*x3[s3_] = x1[B1/2];*)
(*x4[s4_] = -s4;*)
(*x5[s5_] = s5;*)
(**)
(*y1[s1_] = H/2-tf1/2;*)
(*y2[s2_] =  H/2-tf1/2;*)
(*y3[s3_]  = y1[B1/2]-s3;*)
(*y4[s4_] = y3[H-tf1/2-tf2/2];*)
(*y5[s5_] = y3[H-tf1/2-tf2/2];*)
(**)
(*\[Delta]1 = tf1;*)
(*\[Delta]2=tf1;*)
(*\[Delta]3=tw;*)
(*\[Delta]4=tf2;*)
(*\[Delta]5 = tf2;*)
(**)
(**)
(*(* *)
(*A = NIntegrate[1, {x,y}\[Element] sec];*)
(**)*)
(*A = Integrate[\[Delta]1, {s1, 0, B1/2}]+Integrate[\[Delta]2, {s2, 0,B1/2}]+Integrate[\[Delta]3, {s3,0, H-tf1/2-tf2/2}]+Integrate[\[Delta]4, {s4,0, B2/2}]+Integrate[\[Delta]5, {s5,0, B2/2}];*)
(**)
(*(**)
(*xG = 1/A*(Integrate[x1[s1]*\[Delta]1, {s1, 0, B1/2}]+Integrate[x2[s2]*\[Delta]2, {s2, 0, B1/2}]+Integrate[x3[s3]*\[Delta]3, {s3, 0, H-tf1/2-tf2/2}] + Integrate[x4[s4]*\[Delta]4, {s4,0, B2/2}]+ Integrate[x5[s5]*\[Delta]5, {s5,0, B2/2}])//Simplify//N;*)
(**)
(*yG = 1/A*(Integrate[y1[s1]*\[Delta]1, {s1, 0, B1/2}]+Integrate[y2[s2]*\[Delta]2, {s2, 0, B1/2}]+Integrate[y3[s3]*\[Delta]3, {s3, 0, H-tf1/2-tf2/2}] + Integrate[y4[s4]*\[Delta]4, {s4,0, B2/2}]+ Integrate[y5[s5]*\[Delta]5, {s5,0, B2/2}])//Simplify//N;*)
(**)*)
(**)
(**)
(*(**)
(*Jx = NIntegrate[y^2, {x, y}\[Element]sec]*)
(**)*)
(*Jx = Integrate[y1[s1]^2*\[Delta]1, {s1, 0, B1/2}]+Integrate[y2[s2]^2*\[Delta]2, {s2, 0,B1/2}]+Integrate[y3[s3]^2*\[Delta]3, {s3, 0, H-tf1/2-tf2/2}]+Integrate[y4[s4]^2*\[Delta]4, {s4, 0, B2/2}]+Integrate[y5[s5]^2*\[Delta]5, {s5, 0, B2/2}]//N//Simplify;*)
(**)
(*(**)
(*Jy = NIntegrate[x^2, {x, y}\[Element]sec];*)
(**)*)
(*Jy = Integrate[x1[s1]^2*\[Delta]1, {s1, 0, B1/2}]+Integrate[x2[s2]^2*\[Delta]2, {s2, 0,B1/2}]+Integrate[x3[s3]^2*\[Delta]3, {s3, 0, H-tf1/2-tf2/2}]+Integrate[x4[s4]^2*\[Delta]4, {s4, 0, B2/2}]+Integrate[x5[s5]^2*\[Delta]5, {s5, 0, B2/2}]//N//Simplify;*)
(**)
(**)
(*Jt = \[Delta]1^3*(B1/2)/3+\[Delta]2^3*(B1/2)/3+\[Delta]3^3*(H-tf1/2-tf2/2)/3+\[Delta]4^3*(B2/2)/3+\[Delta]5^3*(B2/2)/3//N;*)
(**)
(**)
(*d =Abs[xG];*)
(*h1 = (H-tf1)/2-yG;*)
(*h2 = (H-tf1)/2-yG;*)
(*h3 = d;*)
(*h4= (H-tf2)/2+yG;*)
(*h5 =-((H-tf2)/2+yG);*)
(**)
(**)
(*c=.;*)
(**)
(*\[Omega]1[s1_] = c-Integrate[h1, s1];*)
(*\[Omega]2[s2_] =\[Omega]1[B1/2]-Integrate[h2, s2];*)
(*\[Omega]3[s3_] = \[Omega]1[B1/2]-Integrate[h3, s3];*)
(*\[Omega]4[s4_] = \[Omega]3[H-tf1/2-tf2/2]-Integrate[h4, s4];*)
(*\[Omega]5[s5_] = \[Omega]3[H-tf1/2-tf2/2]-Integrate[h5, s5];*)
(**)
(*c=.;*)
(*c = c/.Solve[*)
(*Integrate[\[Omega]1[s1], {s1, 0, B1/2}]+Integrate[\[Omega]2[s2], {s2, 0, B1/2}]+Integrate[\[Omega]3[s3], {s3, 0, H-tf1/2-tf2/2}]+Integrate[\[Omega]4[s4], {s4, 0, B2/2}]+Integrate[\[Omega]5[s5], {s5, 0, B2/2}]==0, c*)
(*]//First;*)
(**)
(*check=Integrate[\[Omega]1[s1], {s1, 0, B1/2}]+Integrate[\[Omega]2[s2], {s2, 0, B1/2}]+Integrate[\[Omega]3[s3], {s3, 0, H-tf1/2-tf2/2}]+Integrate[\[Omega]4[s4], {s4, 0, B2/2}]+Integrate[\[Omega]5[s5], {s5, 0, B2/2}]//Chop;*)
(*(*If[check!= 0, Break[] && Print["Aborted"]];*)*)
(**)
(**)
(*xC = -1/Jx*(Integrate[\[Omega]1[s1]*\[Delta]1*y1[s1], {s1, 0, B1/2}]+Integrate[\[Omega]2[s2]\[Delta]2*y2[s2], {s2, 0, B1/2}]+Integrate[\[Omega]3[s3]\[Delta]3*y3[s3], {s3, 0, H-tf1/2-tf2/2}]+Integrate[\[Omega]4[s4]*\[Delta]4*y4[s4], {s4, 0, B2/2}]+Integrate[\[Omega]5[s5]\[Delta]5*y5[s5], {s5, 0, B2/2}])//Chop;*)
(*yC = 1/Jy*(Integrate[\[Omega]1[s1]*\[Delta]1*x1[s1], {s1, 0, B1/2}]+Integrate[\[Omega]2[s2]\[Delta]2*x2[s2], {s2, 0, B1/2}]+Integrate[\[Omega]3[s3]\[Delta]3*x3[s3], {s3, 0, H-tf1/2-tf2/2}]+Integrate[\[Omega]4[s4]*\[Delta]4*x4[s4], {s4, 0,B2/2}]+Integrate[\[Omega]5[s5]\[Delta]5*x5[s5], {s5, 0, B2/2}])//Chop;*)
(**)
(*PC = {xC, yC};*)
(**)
(*e = Abs[xC-d];*)
(**)
(**)
(*\[Omega]c1[s1_] = \[Omega]1[s1]+xC*y1[s1]-yC*x1[s1]//Simplify;*)
(*\[Omega]c2[s2_] = \[Omega]2[s2]+xC*y2[s2]-yC*x2[s2]//Simplify;*)
(*\[Omega]c3[s3_] = \[Omega]3[s3]+xC*y3[s3]-yC*x3[s3]//Simplify;*)
(*\[Omega]c4[s4_] = \[Omega]4[s4]+xC*y4[s4]-yC*x4[s4]//Simplify;*)
(*\[Omega]c5[s5_] = \[Omega]5[s5]+xC*y5[s5]-yC*x5[s5]//Simplify;*)
(**)
(*check2=Integrate[\[Omega]c1[s1], {s1, 0, B1/2}]+Integrate[\[Omega]c2[s2], {s2, 0, B1/2}]+Integrate[\[Omega]c3[s3], {s3, 0, H-tf1/2-tf2/2}]+Integrate[\[Omega]c4[s4], {s4, 0, B2/2}]+Integrate[\[Omega]c5[s5], {s5, 0, B2/2}]//Chop;*)
(*(*If[check2!= 0, Break[] && Print["Aborted"]];*)*)
(**)
(**)
(*J\[Omega] = Integrate[\[Omega]c1[s1]^2*\[Delta]1, {s1, 0, B1/2}]+Integrate[\[Omega]c2[s2]^2*\[Delta]2, {s2, 0, B1/2}]+Integrate[\[Omega]c3[s3]^2*\[Delta]3, {s3, 0, H-tf1/2-tf2/2}]+Integrate[\[Omega]c4[s4]^2*\[Delta]4, {s4, 0, B2/2}]+Integrate[\[Omega]c5[s5]^2*\[Delta]5, {s5, 0, B2/2}]//Chop//N;*)
(**)
(*c1 = G*Jt;*)
(*c2 = Ee*J\[Omega];*)
(**)
(**)
(**)
(*\[Theta]usol[z_] = \[Theta][z]/.DSolve[*)
(*{*)
(*c1*\[Theta]''[z]==0, *)
(*\[Theta]''[L]==0,*)
(*\[Theta][0]==0,  *)
(*c1*\[Theta]'[L]==Mt*)
(*}, *)
(*\[Theta][z], z]//First;*)
(*\[Theta]=.;*)
(*\[Theta]sol[z_] =\[Theta][z]/.NDSolve[*)
(*{*)
(*c2*Derivative[4][\[Theta]][z]-c1*Derivative[2][\[Theta]][z]==0, *)
(*Derivative[2][\[Theta]][L]==0,*)
(*\[Theta][0]==0,  *)
(*Derivative[1][\[Theta]][0]==0,*)
(*c1*Derivative[1][\[Theta]][L]-c2*Derivative[3][\[Theta]][L]==Mt*)
(*}, *)
(*\[Theta][z], {z, 0, L}]//Quiet;*)
(**)
(**)
(*Grid[*)
(*{{*)
(*Show[*)
(*RegionPlot[sec], *)
(*ListLinePlot[{Table[Callout[points[[i]], ToString@i], {i, 1, 6}]} , PlotStyle->Black, PlotMarkers->{Automatic, 5}],*)
(*ListPlot[{Callout[PG, ToString@N[PG]]}, PlotStyle->Red, PlotMarkers->{Automatic, 5} ],*)
(*ListPlot[{Callout[PG, "G", Left]}, PlotStyle->Red, PlotMarkers->{Automatic, 5} ],*)
(*ListPlot[{Callout[PC, ToString@N[PC]]}, PlotStyle->Magenta, PlotMarkers->{Automatic, 5} ],*)
(*ListPlot[{Callout[PC, "C", Left]}, PlotStyle->Magenta, PlotMarkers->{Automatic, 5} ],*)
(*AspectRatio->Automatic, *)
(*Axes->True,*)
(*AxesLabel->{"x", "y"},*)
(*PlotRange->{{-1.5Max[B1,B2]/2, 1.5Max[B1,B2]/2}, {-.6H, .6H}},*)
(*ImageSize->300*)
(*]*)
(*,*)
(*Show[{*)
(*ParametricPlot[{x1[s1],y1[s1]},{s1,0,B1/2}],*)
(*ParametricPlot[{x2[s2],y2[s2]},{s2,0,B1/2}],*)
(*ParametricPlot[{x3[s3],y3[s3]},{s3,0,H-tf1/2-tf2/2}],*)
(*ParametricPlot[{x4[s4],y4[s4]},{s4,0,B2/2}],*)
(*ParametricPlot[{x5[s5],y5[s5]},{s5,0,B2/2}],*)
(*ListPlot[{Table[Callout[points[[i]], ToString@i], {i, 1, 6}]} , PlotStyle->Black, PlotMarkers->{Automatic, 5}],*)
(*ListPlot[{Callout[PG, ToString@N[PG]]}, PlotStyle->Red, PlotMarkers->{Automatic, 5} ],*)
(*ListPlot[{Callout[PG, "G", Left]}, PlotStyle->Red, PlotMarkers->{Automatic, 5} ],*)
(*ListPlot[{Callout[PC, ToString@N[PC]]}, PlotStyle->Magenta, PlotMarkers->{Automatic, 5} ],*)
(*ListPlot[{Callout[PC, "C", Left]}, PlotStyle->Magenta, PlotMarkers->{Automatic, 5} ]*)
(*},PlotRange->{{-1.5Max[B1,B2]/2, 1.5Max[B1,B2]/2}, {-.6H, .6H}},*)
(*ImageSize->300]*)
(*,*)
(*Plot[{Evaluate@\[Theta]usol[z],Evaluate@\[Theta]sol[z]}, {z, 0, L}, AxesLabel->{"z", "\[Theta](z)"}, PlotRange->Automatic, AspectRatio->1/GoldenRatio, ImageSize->400, PlotLabels->{"Uniform Torsion", "Non-uniform Torsion"}]*)
(**)
(*}}, Spacings->{2,0}]*)
(**)
(**)
(*], *)
(*{{B1,200, "\!\(\*SubscriptBox[\(B\), \(1\)]\) [mm]"}},{{B2,200, "\!\(\*SubscriptBox[\(B\), \(2\)]\) [mm]"}},{{H,400, "H [mm]"}}, {{tf1,20, "\!\(\*SubscriptBox[\(t\), SubscriptBox[\(f\), \(1\)]]\) [mm]"}}, {{tf2,20, "\!\(\*SubscriptBox[\(t\), SubscriptBox[\(f\), \(2\)]]\) [mm]"}}, {{tw,20, "\!\(\*SubscriptBox[\(t\), \(w\)]\) [mm]"}},{{L, 1000, "L [mm]"}},{{Ee, 210*10^3, "E [MPa]"}}, {{G, 80000, "G [MPa]"}},{{Mt, 10000, "\!\(\*SubscriptBox[\(M\), \(t\)]\) [N mm]"}}*)
(*]*)
(**)
