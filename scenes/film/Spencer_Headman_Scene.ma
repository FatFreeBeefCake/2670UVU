//Maya ASCII 2017ff05 scene
//Name: Spencer_Headman_Scene.ma
//Last modified: Mon, Dec 11, 2017 08:50:51 AM
//Codeset: 1252
file -rdi 1 -ns "Sam_UpdatedFinalScene" -dr 1 -rfn "Sam_UpdatedFinalSceneRN"
		 -op "v=0;p=17;f=0" -typ "mayaAscii" "C:/Users/10635250/Desktop/UVU2670/2670UVU//scenes/film/sets/Sam_UpdatedFinalScene.ma";
file -rdi 1 -ns "ImageProjectionRig" -rfn "ImageProjectionRigRN" -op "v=0;p=17;f=0"
		 -typ "mayaAscii" "C:/Users/10635250/Desktop/UVU2670/2670UVU//scenes/film/ImageProjectionRig.ma";
file -rdi 1 -ns "Sam_Final_Updated_Scene" -rfn "Sam_Final_Updated_SceneRN" 
		-op "v=0;" -typ "mayaAscii" "C:/Users/10635250/Desktop/UVU2670/2670UVU//scenes/film/sets/Sam_Final_Updated_Scene.ma";
file -r -ns "Sam_UpdatedFinalScene" -dr 1 -rfn "Sam_UpdatedFinalSceneRN" -op "v=0;p=17;f=0"
		 -typ "mayaAscii" "C:/Users/10635250/Desktop/UVU2670/2670UVU//scenes/film/sets/Sam_UpdatedFinalScene.ma";
file -r -ns "ImageProjectionRig" -dr 1 -rfn "ImageProjectionRigRN" -op "v=0;p=17;f=0"
		 -typ "mayaAscii" "C:/Users/10635250/Desktop/UVU2670/2670UVU//scenes/film/ImageProjectionRig.ma";
file -r -ns "Sam_Final_Updated_Scene" -dr 1 -rfn "Sam_Final_Updated_SceneRN" -op
		 "v=0;" -typ "mayaAscii" "C:/Users/10635250/Desktop/UVU2670/2670UVU//scenes/film/sets/Sam_Final_Updated_Scene.ma";
requires maya "2017ff05";
requires -nodeType "simpleSelector" -nodeType "renderSetupLayer" -nodeType "renderSetup"
		 -nodeType "collection" -nodeType "materialOverride" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "417604C9-4261-BED8-C02F-B893944B2C1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.832713172262189 83.230807176928664 119.67542487656337 ;
	setAttr ".r" -type "double3" -32.138352729634533 19.800000000000168 -1.6902007068327361e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "819C2B73-4104-0A90-350E-5988251DAB36";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 123.7688322401967;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.2198968755969961 15.337733199177549 16.387668446616026 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DB7B36DB-4757-AF3A-3E6B-81AA3E76BFED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.3098236602386208 1000.1 24.669557013590307 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D7B6F7FF-4A6C-7708-0940-5B811BF1E6A7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 56.569100262265593;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A58B0E0F-4BBA-F022-339A-D99CEC0B27BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9A677D8B-45D9-D6AF-E595-CF81D694381D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C0BA47E9-4005-BB22-50D7-4CA244D1E8B0";
	setAttr ".t" -type "double3" 1000.1787352290286 4.2936358130706331 -2.9969474606140447 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0171FD6C-463A-38E4-7B3C-28A7205AA265";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 36.909788867562384;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "persp1";
	rename -uid "E1032563-4E83-0B0F-C05D-FBB30FADFB87";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.071042303329966 2.1908558128989872 23.845625994261283 ;
	setAttr ".r" -type "double3" -200.6179805567572 -228.3532078261947 176.02413087197993 ;
	setAttr ".s" -type "double3" 0.39893081709792066 0.39893081709792066 0.39893081709792066 ;
createNode camera -n "persp1Shape" -p "persp1";
	rename -uid "C802064B-4E03-2682-C2BE-53BF6A47FDBD";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.6818864000000002 0.94488 ;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 58.323631651380737;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dfg" yes;
createNode transform -n "YB_SuperFront1" -p "persp1";
	rename -uid "DFF441B4-4D85-1D2D-A366-CD9EBD778863";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.60268496366775426 -5.8401773839505164 -16.280559117602756 ;
	setAttr ".r" -type "double3" 0.3022052352744074 -1.9480722729328697 -0.12162769523906077 ;
	setAttr ".s" -type "double3" -1 1.0000000000000002 1 ;
createNode mesh -n "YB_SuperFrontShape1" -p "YB_SuperFront1";
	rename -uid "ED9EC5F8-4AC3-3AB4-5752-F28C35AF726C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.99915283529157062 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 0.99915284
		 1 0.99915284;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -9.60000038 0.14876413 1.93725872 9.60000038 0.14876413 1.93725872
		 -9.60000038 10.9487648 1.93725872 9.60000038 10.9487648 1.93725872;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "areaLight5" -p "persp1";
	rename -uid "538D3123-41D9-6751-1C30-5599B877E776";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.2132421958805888 -10.308178859789232 -11.864626185208909 ;
	setAttr ".r" -type "double3" 5.1974602390221696 -15.510941188970889 -1.4889248831075805 ;
	setAttr ".s" -type "double3" 0.74581338728172064 0.74581338728172053 0.74581338728172053 ;
createNode areaLight -n "areaLightShape5" -p "areaLight5";
	rename -uid "51E391FA-47BA-7B50-CB47-689D2FBD266A";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".in" -0.15000000596046448;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 1;
createNode transform -n "areaLight4" -p "persp1";
	rename -uid "51DE762C-425E-3AAB-B42F-5397A6873120";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.2971763461738526 -8.4407017035012011 -9.4810263398611276 ;
	setAttr ".r" -type "double3" 5.1974602390221696 -15.510941188970889 -1.4889248831075805 ;
	setAttr ".s" -type "double3" 0.74581338728172064 0.74581338728172053 0.74581338728172053 ;
createNode areaLight -n "areaLightShape1" -p "areaLight4";
	rename -uid "C6292052-4F55-BC7E-80B3-D4964A37354B";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".in" -0.15000000596046448;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 8;
createNode transform -n "areaLight3" -p "persp1";
	rename -uid "70A8F261-4F42-F2D2-7FE6-5FAD255CDB2F";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 9.9683606749144253 -9.6433110287861119 -4.7360243136391853 ;
	setAttr ".r" -type "double3" 5.1974602390221696 -15.510941188970886 -1.4889248831075803 ;
	setAttr ".s" -type "double3" 1.1015084924782503 1.1015084924782499 1.1015084924782499 ;
createNode areaLight -n "areaLightShape2" -p "areaLight3";
	rename -uid "8E3006EA-4707-D009-5319-6691C20D9496";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".in" -0.5;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 4;
createNode transform -n "areaLight2" -p "persp1";
	rename -uid "0BF7089A-4C3B-9152-5F88-C28D08A21C08";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4429328753694763 7.6491917654935797 -9.5287226012424071 ;
	setAttr ".r" -type "double3" 5.1974602390221687 -15.510941188970889 -1.4889248831075805 ;
	setAttr ".s" -type "double3" 2.5067003027608732 2.5067003027608727 2.5067003027608727 ;
createNode areaLight -n "areaLightShape6" -p "areaLight2";
	rename -uid "D35D9860-4CB0-8EAB-A743-498036DC3592";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 2;
createNode transform -n "areaLight1" -p "persp1";
	rename -uid "52165376-4EF6-37C1-8D17-C79038426B15";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.439048927425997 3.3610330439952834 -11.158900813380431 ;
	setAttr ".r" -type "double3" 5.1974602390221687 -15.510941188970889 -1.4889248831075805 ;
	setAttr ".s" -type "double3" 2.5067003027608732 2.5067003027608727 2.5067003027608727 ;
createNode areaLight -n "areaLightShape7" -p "areaLight1";
	rename -uid "0DEAEA0F-494D-F522-2360-C08E74F440B0";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".in" 0.05000000074505806;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 5;
createNode transform -n "pPlane1";
	rename -uid "BD0760C3-4BD2-3B7C-753E-05A8301946AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -39.812099078414889 34.310508604718329 -32.822392121458002 ;
	setAttr ".r" -type "double3" 41.345312581445747 0 -96.670135972076011 ;
	setAttr ".s" -type "double3" 97.727581084339434 25.29991036792142 223.9837510132237 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "B3653D4B-404E-8CA3-ACBC-65BE4181492B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "left";
	rename -uid "03EBB881-4B13-A34B-315B-AA8C3C957A83";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "DAA37583-4C5B-FFFB-E5B8-6ABA8B82089F";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pointLight2";
	rename -uid "00708597-4D89-6570-184B-B6972B0306C6";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".t" -type "double3" -27.084081161833424 -0.63267524652963036 7.1696516824588112 ;
	setAttr ".s" -type "double3" 11.74285726640502 11.74285726640502 11.74285726640502 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	rename -uid "A4A36876-4AC5-08DC-2CB5-76A5B3E30AAD";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".dms" yes;
	setAttr ".us" no;
	setAttr ".childIndex" 9;
createNode renderSphere -n "sphereShape1" -p "pointLight2";
	rename -uid "D869BFC6-4854-0E02-1D9C-20900033BA49";
	setAttr -k off ".v";
	setAttr ".rt" 1;
	setAttr ".vf" 0;
createNode transform -n "pointLight3";
	rename -uid "77BAE02A-4CED-0CC1-4917-F58ADB2B057A";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7865732387498348 0 18.873331066451726 ;
createNode pointLight -n "pointLightShape3" -p "pointLight3";
	rename -uid "5A35D9AB-4514-9AB8-E540-76A0580FADEB";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v" no;
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".cl" -type "float3" 0.043709993 0.31 0.053953294 ;
	setAttr ".in" 1.7000000476837158;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 11;
createNode transform -n "pointLight4";
	rename -uid "268E4BD7-49B4-F7D1-C7E7-CA9CD174466F";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7865732387498348 0.78320657790007164 18.873331066451726 ;
createNode pointLight -n "pointLightShape4" -p "pointLight4";
	rename -uid "013A56E0-4941-6077-6B0E-4A8A51BBED93";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	setAttr -k off ".v";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".in" 0.5;
	setAttr ".urs" no;
	setAttr ".us" no;
	setAttr ".childIndex" 12;
createNode place3dTexture -n "place3dTexture1";
	rename -uid "88742EC3-4511-1E88-8FA9-9DA9C4128D01";
	setAttr ".t" -type "double3" -21.412728640390242 1.2733565969446943 -5.9246617422041972 ;
	setAttr ".r" -type "double3" -54.665043590999908 37.605789317600539 61.950933830133017 ;
	setAttr ".s" -type "double3" 1.2710337900418938 -44.605636964774 1 ;
createNode fosterParent -n "Sam_Final_Updated_SceneRNfosterParent1";
	rename -uid "D93BA227-4A53-40CD-2831-B6A5A5CB1D73";
createNode camera -n "cameraShape1" -p "Sam_Final_Updated_SceneRNfosterParent1";
	rename -uid "6CBD16E2-44BB-0BBE-E9E2-0D86145BE7ED";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 12.000000000000002;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 1000;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5998ABE3-495F-A268-292B-2A8D6BD4764D";
	setAttr -s 356 ".lnk";
	setAttr -s 360 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D70C9487-4E3F-C64A-EFB1-2EAABC93B836";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A61A9912-4146-188A-8C71-58A978EACA9A";
createNode displayLayerManager -n "layerManager";
	rename -uid "1FC78EE9-496B-9118-852D-BC8E3A0A7CA8";
createNode displayLayer -n "defaultLayer";
	rename -uid "88F3F7E8-4244-71B4-064A-039102A16B1E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4FA639D2-4BB1-A193-E7FD-FFA8FF157B70";
	setAttr -s 3 ".rlmi[1:3]"  1 2 3;
	setAttr -s 4 ".rlmi";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5243EB57-4955-5323-8F91-96841AE3396D";
	setAttr ".g" yes;
createNode reference -n "Sam_UpdatedFinalSceneRN";
	rename -uid "9CCFB30C-4028-5655-58C7-AAB65B873C27";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Sam_UpdatedFinalSceneRN"
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DE2RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DERN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DERN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DERN3" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:BananaTree_SCRN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin2RN" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DE3RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE4RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE1RN3" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:JungleTreeByLS1RN1" 0
		
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklinRN1" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:AnotherRock_JonathanFranklinRN1" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE1RN2" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklinRN" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE2RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:JungleTreeByLS1RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE3RN3" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE14RN" 0
		"Sam_UpdatedFinalScene:Trees_withLeaves_BJRN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE5RN" 0
		"Sam_UpdatedFinalSceneRN" 7
		2 "|Sam_UpdatedFinalScene:JakeCameraRig|Sam_UpdatedFinalScene:ImageProjectionRig:YB_Projection_Rig" 
		"visibility" " 0"
		2 "|Sam_UpdatedFinalScene:pCube5" "visibility" " 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoysRNfosterParent1|Sam_UpdatedFinalScene:Bush" 
		"translate" " -type \"double3\" -11.785989204274308 -0.96898350129560495 7.168786145895826"
		
		2 "|Sam_UpdatedFinalScene:Sam_WithBoysRNfosterParent1|Sam_UpdatedFinalScene:pCube4" 
		"translate" " -type \"double3\" -5.678929887467147 -0.93863014475155238 11.969043373844585"
		
		2 "Sam_UpdatedFinalScene:ImageProjectionRig:YB_SuperFront2_Mat" "diffuse" 
		" 0.80000001192092896"
		2 "Sam_UpdatedFinalScene:ImageProjectionRig:YB_SuperFront2_Mat" "matteOpacityMode" 
		" 2"
		2 "Sam_UpdatedFinalScene:ImageProjectionRig:YB_SuperFront2_Mat" "matteOpacity" 
		" 1"
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE1RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_SceneRN" 1
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:MyView" "visibility" 
		" -av 1"
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SCRN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE1RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DERN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE2RN2" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:BananaTree_SC1RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin1RN" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE8RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE6RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:JungleTreeByLSRN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE3RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:FallenTrunk_DERN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:AddisonM_Tree3RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DERN2" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:THEtree_SCRN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:JungleTreeByLSRN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Rock_JonathanFranklinRN" 0
		
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SmallBush_SCRN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SmallRock_JonathanFranklinRN" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DE1RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE4RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Fern_DERN4" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE13RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE1RN4" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SCRN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE7RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:SmallBush_SCRN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE2RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE6RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE11RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:AnotherRock_JonathanFranklinRN" 
		0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE9RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE3RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE3RN2" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE7RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE10RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE12RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoysRN" 31
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:MyView" "visibility" " -av 1"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:directionalLight1" "expandedState" 
		" 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:directionalLight1|Sam_UpdatedFinalScene:Sam_WithBoys:directionalLightShape1" 
		"childIndex" " 4"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:directionalLight2" "expandedState" 
		" 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:directionalLight2|Sam_UpdatedFinalScene:Sam_WithBoys:directionalLightShape2" 
		"childIndex" " 2"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:box1" "translate" " -type \"double3\" 0 0 -19.484919697852348"
		
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:box1" "translateZ" " -av"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:box1" "translateX" " -av"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:box1" "translateY" " -av"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:box1|Sam_UpdatedFinalScene:Sam_WithBoys:boxShape1" 
		"visibleFraction" " 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:boys_leaves_shadow|Sam_UpdatedFinalScene:Sam_WithBoys:spotLight1" 
		"expandedState" " 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:boys_leaves_shadow|Sam_UpdatedFinalScene:Sam_WithBoys:spotLight1|Sam_UpdatedFinalScene:Sam_WithBoys:spotLightShape1" 
		"childIndex" " 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:spotLight4" "expandedState" " 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:spotLight4|Sam_UpdatedFinalScene:Sam_WithBoys:spotLightShape4" 
		"childIndex" " 3"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:spotLight2" "expandedState" " 0"
		2 "|Sam_UpdatedFinalScene:Sam_WithBoys:spotLight2|Sam_UpdatedFinalScene:Sam_WithBoys:spotLightShape2" 
		"childIndex" " 1"
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:shadedBrightnessShader" "color" " -s 2"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:shadedBrightnessShader" "color[0].color_Color" 
		" -type \"float3\" 0.016058892000000002 0.027000000999999999 0.0032939994999999999"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:shadedBrightnessShader" "color[1].color_Color" 
		" -type \"float3\" 0.053529643000000002 0.090000003999999995 0.010979999000000001"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:threeToneBrightnessShader8" "color" 
		" -s 3"
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:threeToneBrightnessShader8" "color[0].color_Color" 
		" -type \"float3\" 0.081 0.032998255999999997 0.002997"
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:cubeFog" "color" " -type \"float3\" 0 0.17703350000000001 0.0068098930999999996"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:cubeFog" "incandescence" " -type \"float3\" 0 0 0"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:cubeFog" "glowIntensity" " 0"
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:cubeFog" "density" " 1.5"
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:cubeFog" "edgeDropoff" " 0.71153843402862549"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:lambert3" "diffuse" " 0.2669903039932251"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:lambert3" "ambientColor" " -type \"float3\" 0 0 0"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:lambert3" "translucence" " 0.0097087379544973373"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:lambert3" "translucenceFocus" " 0.44660192728042603"
		
		2 "Sam_UpdatedFinalScene:Sam_WithBoys:lambert3" "translucenceDepth" " 0.16990292072296143"
		
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:Bamboo_DE5RN1" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC1RN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_2dCompiledRN" 0
		"Sam_UpdatedFinalScene:Sam_WithBoys:Sam_Final_Scene:BananaTree_SC1RN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode objectSet -s -n "lightEditorRoot";
	rename -uid "8E9E7FBF-460C-859E-C705-B7931DCC23EB";
	addAttr -ci true -sn "isolate" -ln "isolate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "wasEnabled" -ln "wasEnabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "childIndex" -ln "childIndex" -dv -1 -at "long";
	addAttr -ci true -sn "lightGroup" -ln "lightGroup" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visibility" -ln "visibility" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -s 15 ".dsm";
lockNode -l 1 ;
createNode timeEditor -s -n "timeEditor";
	rename -uid "BA78D258-C34D-B98A-A142-80BE3DB871F3";
	setAttr ".ac" 0;
createNode reference -n "ImageProjectionRigRN";
	rename -uid "CC468852-4997-DC2F-2E8E-11B2A6DEA22B";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"ImageProjectionRigRN"
		"ImageProjectionRigRN" 0
		"ImageProjectionRigRN" 8
		2 "|ImageProjectionRig:YB_Projection_Rig" "visibility" " 0"
		2 "|ImageProjectionRig:YB_Projection_Rig|ImageProjectionRig:YB_Front2" "visibility" 
		" 0"
		2 "|ImageProjectionRig:YB_Projection_Rig|ImageProjectionRig:YB_Back" "visibility" 
		" 0"
		2 "|ImageProjectionRig:YB_Projection_Rig|ImageProjectionRig:YB_Mid1" "visibility" 
		" 0"
		2 "|ImageProjectionRig:YB_Projection_Rig|ImageProjectionRig:YB_SuperBack1" 
		"visibility" " 0"
		2 "ImageProjectionRig:YB_SuperFront" "fileTextureName" " -type \"string\" \"C:/Users/10635250/Desktop/BTRenderNew/BTshot85.png\""
		
		2 "ImageProjectionRig:YB_SuperFront" "colorSpace" " -type \"string\" \"sRGB\""
		
		5 4 "ImageProjectionRigRN" "ImageProjectionRig:lambert3SG.dagSetMembers" 
		"ImageProjectionRigRN.placeHolderList[1]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6321DB27-4B31-5102-874C-8E9747E8D97E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp1Shape\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 690\n            -height 449\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 341\n            -height 202\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 341\n            -height 202\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 341\n            -height 203\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 1\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"lightEditorLookThroughModelPanelLabel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"lightEditorLookThroughModelPanelLabel\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"cameraShape1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 181\n            -height 179\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1Shape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 690\\n    -height 449\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1Shape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 690\\n    -height 449\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F6E5179E-4AD6-5F62-4246-A795D3A22CD5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "5F616288-442C-B320-EFDE-A0985350D7D3";
	setAttr ".cuv" 2;
createNode lambert -n "Black";
	rename -uid "C68D61A7-4ED8-3A01-94A5-45BFB0741D41";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "0F6E272A-4425-42E3-CCC5-60A2B8417A6B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3D8932D3-4489-885D-A014-218A7D403DB8";
createNode shadingEngine -n "lightFogSE";
	rename -uid "81FA456F-4D5E-C76F-82D4-3490FB3F5C9F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "90899FF7-4DFF-1D8B-CA02-9C9AC41CB3A2";
createNode lightFog -n "lightFog1";
	rename -uid "5753C507-4314-A476-7B35-46B97A248DB9";
	setAttr ".c" -type "float3" 0.066707999 0.153 0.070027359 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "01FBF0B8-416B-B598-0D42-71AFEB6E41A5";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode reference -n "Sam_Final_Updated_SceneRN";
	rename -uid "1314FF9C-4E59-EED0-E252-E0B4C6E3191C";
	setAttr -s 142 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Sam_Final_Updated_SceneRN"
		"Sam_Final_Updated_SceneRN" 0
		"Sam_Final_Updated_SceneRN" 134
		0 "|Sam_Final_Updated_SceneRNfosterParent1|cameraShape1" "|Sam_Final_Updated_Scene:ambientLight1" 
		"-s -r "
		1 |Sam_Final_Updated_Scene:GodRays1 "expandedState" "expandedState" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1 
		"isolate" "isolate" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1 
		"wasEnabled" "wasEnabled" " -ci 1 -dv 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1 
		"childIndex" "childIndex" " -ci 1 -dv -1 -at \"long\""
		1 |Sam_Final_Updated_Scene:GodRays2 "expandedState" "expandedState" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2 
		"isolate" "isolate" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2 
		"wasEnabled" "wasEnabled" " -ci 1 -dv 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2 
		"childIndex" "childIndex" " -ci 1 -dv -1 -at \"long\""
		1 |Sam_Final_Updated_Scene:ambientLight1 "expandedState" "expandedState" 
		" -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1 
		"isolate" "isolate" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1 
		"wasEnabled" "wasEnabled" " -ci 1 -dv 1 -min 0 -max 1 -at \"bool\""
		1 |Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1 
		"childIndex" "childIndex" " -ci 1 -dv -1 -at \"long\""
		2 "|Sam_Final_Updated_Scene:LOCATION_FOR_YOUNG_BOY" "visibility" " 0"
		2 "|Sam_Final_Updated_Scene:LOCATION_FOR_YOUNG_BOY" "translate" " -type \"double3\" 6.1074392428811173 -0.49173630549597114 19.139081288579995"
		
		2 "|Sam_Final_Updated_Scene:GodRays1" "visibility" " 1"
		2 "|Sam_Final_Updated_Scene:GodRays1" "expandedState" " 0"
		2 "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1" 
		"useRayTraceShadows" " 0"
		2 "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1" 
		"isolate" " 0"
		2 "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1" 
		"wasEnabled" " 1"
		2 "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:GodRaysShape1" 
		"childIndex" " 13"
		2 "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:coneShape1" 
		"visibleFraction" " 0"
		2 "|Sam_Final_Updated_Scene:GodRays2" "visibility" " 1"
		2 "|Sam_Final_Updated_Scene:GodRays2" "expandedState" " 0"
		2 "|Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2" 
		"isolate" " 0"
		2 "|Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2" 
		"wasEnabled" " 1"
		2 "|Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:GodRaysShape2" 
		"childIndex" " 14"
		2 "|Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:coneShape2" 
		"visibleFraction" " 0"
		2 "|Sam_Final_Updated_Scene:MainDirectionalLight" "visibility" " 0"
		2 "|Sam_Final_Updated_Scene:MainDirectionalLight" "expandedState" " 0"
		2 "|Sam_Final_Updated_Scene:MainDirectionalLight|Sam_Final_Updated_Scene:MainDirectionalLightShape" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:MainDirectionalLight|Sam_Final_Updated_Scene:MainDirectionalLightShape" 
		"useRayTraceShadows" " 0"
		2 "|Sam_Final_Updated_Scene:MainDirectionalLight|Sam_Final_Updated_Scene:MainDirectionalLightShape" 
		"childIndex" " 7"
		2 "|Sam_Final_Updated_Scene:SecondaryDirectionalLight" "visibility" " 1"
		2 "|Sam_Final_Updated_Scene:SecondaryDirectionalLight" "expandedState" " 0"
		
		2 "|Sam_Final_Updated_Scene:SecondaryDirectionalLight|Sam_Final_Updated_Scene:SecondaryDirectionalLightShape" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:SecondaryDirectionalLight|Sam_Final_Updated_Scene:SecondaryDirectionalLightShape" 
		"useRayTraceShadows" " 0"
		2 "|Sam_Final_Updated_Scene:SecondaryDirectionalLight|Sam_Final_Updated_Scene:SecondaryDirectionalLightShape" 
		"childIndex" " 6"
		2 "|Sam_Final_Updated_Scene:ambientLight1" "visibility" " 1"
		2 "|Sam_Final_Updated_Scene:ambientLight1" "expandedState" " 0"
		2 "|Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1" 
		"isolate" " 0"
		2 "|Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1" 
		"wasEnabled" " 1"
		2 "|Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1" 
		"childIndex" " 10"
		2 "|Sam_Final_Updated_Scene:Leaves_to_shine_on_boys|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight1" 
		"visibility" " 0"
		2 "|Sam_Final_Updated_Scene:Leaves_to_shine_on_boys|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight1" 
		"expandedState" " 0"
		2 "|Sam_Final_Updated_Scene:Leaves_to_shine_on_boys|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight1|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape1" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:Leaves_to_shine_on_boys|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight1|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape1" 
		"useRayTraceShadows" " 0"
		2 "|Sam_Final_Updated_Scene:Leaves_to_shine_on_boys|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight1|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape1" 
		"centerOfIllumination" " 1.5451577146563835"
		2 "|Sam_Final_Updated_Scene:Leaves_to_shine_on_boys|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight1|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape1" 
		"childIndex" " 0"
		2 "|Sam_Final_Updated_Scene:Shine_on_ground|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight4" 
		"visibility" " 0"
		2 "|Sam_Final_Updated_Scene:Shine_on_ground|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight4" 
		"expandedState" " 0"
		2 "|Sam_Final_Updated_Scene:Shine_on_ground|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight4|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape4" 
		"visibility" " -k 0 1"
		2 "|Sam_Final_Updated_Scene:Shine_on_ground|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight4|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape4" 
		"useRayTraceShadows" " 0"
		2 "|Sam_Final_Updated_Scene:Shine_on_ground|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight4|Sam_Final_Updated_Scene:Sam_WithBoys:spotLightShape4" 
		"childIndex" " 3"
		2 "|Sam_Final_Updated_Scene:Shine_on_ground|Sam_Final_Updated_Scene:Sam_WithBoys:spotLight4|Sam_Final_Updated_Scene:Sam_WithBoys:coneShape1" 
		"visibleFraction" " 0"
		2 "|Sam_Final_Updated_Scene:Fog|Sam_Final_Updated_Scene:Fog1|Sam_Final_Updated_Scene:FogShape1" 
		"visibleFraction" " 0"
		2 "|Sam_Final_Updated_Scene:Fog|Sam_Final_Updated_Scene:Fog2|Sam_Final_Updated_Scene:FogShape2" 
		"visibleFraction" " 0"
		2 "Sam_Final_Updated_Scene:lambert2" "color" " -type \"float3\" 0.061999999 0.034239474999999998 0.0053940005999999997"
		
		5 3 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:GodRays1.instObjGroups" 
		"Sam_Final_Updated_SceneRN.placeHolderList[1]" ""
		5 3 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:GodRays2.instObjGroups" 
		"Sam_Final_Updated_SceneRN.placeHolderList[2]" ""
		5 3 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:ambientLight1.instObjGroups" 
		"Sam_Final_Updated_SceneRN.placeHolderList[3]" ""
		5 4 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:ambientLight1|Sam_Final_Updated_Scene:ambientLightShape1.centerOfIllumination" 
		"Sam_Final_Updated_SceneRN.placeHolderList[4]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush9|Sam_Final_Updated_Scene:Bush9Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[5]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[6]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush40|Sam_Final_Updated_Scene:Bush40Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[7]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[8]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush35|Sam_Final_Updated_Scene:Bush35Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[9]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[10]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush42|Sam_Final_Updated_Scene:Bush42Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[11]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[12]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush2|Sam_Final_Updated_Scene:Bush2Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[13]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[14]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush13|Sam_Final_Updated_Scene:Bush13Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[15]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[16]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush12|Sam_Final_Updated_Scene:Bush12Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[17]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[18]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush44|Sam_Final_Updated_Scene:Bush44Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[19]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[20]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush34|Sam_Final_Updated_Scene:Bush34Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[21]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[22]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush37|Sam_Final_Updated_Scene:Bush37Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[23]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[24]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush38|Sam_Final_Updated_Scene:Bush38Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[25]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[26]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush|Sam_Final_Updated_Scene:BushShape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[27]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[28]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush11|Sam_Final_Updated_Scene:Bush11Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[29]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[30]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush21|Sam_Final_Updated_Scene:Bush21Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[31]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[32]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Short_Palms|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid1Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader4SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[33]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[34]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Short_Palms|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid3|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid3Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader4SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[35]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[36]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:BananaTree|Sam_Final_Updated_Scene:BananaTreeShape.instObjGroups.objectGroups[0]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader5SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[37]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[38]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:BananaTree|Sam_Final_Updated_Scene:BananaTreeShape.instObjGroups.objectGroups[2]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader6SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[39]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[40]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:BananaTree|Sam_Final_Updated_Scene:BananaTreeShape.instObjGroups.objectGroups[1]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader7SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[41]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[42]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:BananaTree|Sam_Final_Updated_Scene:BananaTreeShape.instObjGroups.objectGroups[3]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader8SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[43]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[44]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo6|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape6.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[45]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[46]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo10|Sam_Final_Updated_Scene:BambooShape10.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[47]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[48]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo3|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape3.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[49]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[50]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo4|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape4.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[51]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[52]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo9|Sam_Final_Updated_Scene:BambooShape9.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[53]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[54]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo2|Sam_Final_Updated_Scene:BambooShape2.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[55]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[56]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo7|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape7.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[57]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[58]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape2.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[59]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[60]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo4|Sam_Final_Updated_Scene:BambooShape4.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[61]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[62]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo6|Sam_Final_Updated_Scene:BambooShape6.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[63]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[64]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo11|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape11.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[65]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[66]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo6|Sam_Final_Updated_Scene:BambooShape6.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[67]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[68]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced8|Sam_Final_Updated_Scene:Bamboo13|Sam_Final_Updated_Scene:BambooShape13.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[69]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[70]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo12|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape12.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[71]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[72]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo13|Sam_Final_Updated_Scene:BambooShape13.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[73]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[74]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[75]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[76]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo11|Sam_Final_Updated_Scene:BambooShape11.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[77]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[78]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo7|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooShape7.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[79]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[80]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo3|Sam_Final_Updated_Scene:BambooShape3.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader9SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[81]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[82]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Logan_sTrees|Sam_Final_Updated_Scene:JungleTreeByLS1|Sam_Final_Updated_Scene:JungleTreeByLS1Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader14SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[83]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[84]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:pCube6|Sam_Final_Updated_Scene:pCubeShape6.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader15SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[85]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[86]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:pCube1|Sam_Final_Updated_Scene:Sam_WithBoys:pCubeShape1.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader15SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[87]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[88]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:pCube2|Sam_Final_Updated_Scene:Sam_WithBoys:pCubeShape2.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader15SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[89]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[90]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:Mesh|Sam_Final_Updated_Scene:Sam_WithBoys:MeshShape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader15SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[91]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[92]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:pCube4|Sam_Final_Updated_Scene:pCubeShape4.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:rampShader15SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[93]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[94]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Fog|Sam_Final_Updated_Scene:Fog2|Sam_Final_Updated_Scene:FogShape2.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:cubeFogSG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[95]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[96]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:THE_Tree|Sam_Final_Updated_Scene:THE_TreeShape.instObjGroups.objectGroups[0]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:THEtree_SC:rampShader1SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[97]" "Sam_Final_Updated_SceneRN.placeHolderList[98]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:THE_Tree|Sam_Final_Updated_Scene:THE_TreeShape.instObjGroups.objectGroups[1]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:THEtree_SC:rampShader2SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[99]" "Sam_Final_Updated_SceneRN.placeHolderList[100]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:Palm|Sam_Final_Updated_Scene:PalmShape.instObjGroups.objectGroups[1]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC:rampShader1SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[101]" "Sam_Final_Updated_SceneRN.placeHolderList[102]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:Palm|Sam_Final_Updated_Scene:PalmShape.instObjGroups.objectGroups[0]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC:rampShader3SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[103]" "Sam_Final_Updated_SceneRN.placeHolderList[104]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:Palm|Sam_Final_Updated_Scene:PalmShape.instObjGroups.objectGroups[2]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC:rampShader4SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[105]" "Sam_Final_Updated_SceneRN.placeHolderList[106]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:bush|Sam_Final_Updated_Scene:bushShape.instObjGroups.objectGroups[0]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SmallBush_SC:rampShader1SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[107]" "Sam_Final_Updated_SceneRN.placeHolderList[108]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Rock|Sam_Final_Updated_Scene:RockShape.instObjGroups" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:AnotherRock_JonathanFranklin:rampShader1SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[109]" "Sam_Final_Updated_SceneRN.placeHolderList[110]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:palm1|Sam_Final_Updated_Scene:palmShape1.instObjGroups.objectGroups[1]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC2:rampShader1SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[111]" "Sam_Final_Updated_SceneRN.placeHolderList[112]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:palm1|Sam_Final_Updated_Scene:palmShape1.instObjGroups.objectGroups[0]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC2:rampShader3SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[113]" "Sam_Final_Updated_SceneRN.placeHolderList[114]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:palm1|Sam_Final_Updated_Scene:palmShape1.instObjGroups.objectGroups[2]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:PalmTree_SC2:rampShader4SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[115]" "Sam_Final_Updated_SceneRN.placeHolderList[116]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:banana|Sam_Final_Updated_Scene:bananaShape.instObjGroups.objectGroups[2]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BananaTree_SC3:rampShader1SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[117]" "Sam_Final_Updated_SceneRN.placeHolderList[118]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:banana|Sam_Final_Updated_Scene:bananaShape.instObjGroups.objectGroups[0]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BananaTree_SC3:rampShader2SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[119]" "Sam_Final_Updated_SceneRN.placeHolderList[120]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:banana|Sam_Final_Updated_Scene:bananaShape.instObjGroups.objectGroups[1]" 
		"Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BananaTree_SC3:rampShader3SG.dagSetMembers" 
		"Sam_Final_Updated_SceneRN.placeHolderList[121]" "Sam_Final_Updated_SceneRN.placeHolderList[122]" 
		""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Ground|Sam_Final_Updated_Scene:GroundShape.instObjGroups" 
		"Sam_Final_Updated_Scene:lambert2SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[123]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[124]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TallSwampTrees|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin:pCylinder1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin:pCylinderShape1.instObjGroups" 
		"Sam_Final_Updated_Scene:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[125]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[126]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TallSwampTrees|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin2:pCylinder1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin2:pCylinderShape1.instObjGroups" 
		"Sam_Final_Updated_Scene:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[127]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[128]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TwistyTree|Sam_Final_Updated_Scene:TwistyTreeShape.instObjGroups" 
		"Sam_Final_Updated_Scene:rampShader2SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[129]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[130]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:FallenTrunk|Sam_Final_Updated_Scene:FallenTrunkShape.instObjGroups" 
		"Sam_Final_Updated_Scene:rampShader3SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[131]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[132]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves8|Sam_Final_Updated_Scene:Leaves8Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:SmallBush_SC:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[133]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[134]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves5|Sam_Final_Updated_Scene:Leaves5Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:SmallBush_SC:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[135]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[136]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves7|Sam_Final_Updated_Scene:Leaves7Shape.instObjGroups" 
		"Sam_Final_Updated_Scene:SmallBush_SC:rampShader1SG.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[137]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[138]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:GodRays1|Sam_Final_Updated_Scene:coneShape1.instObjGroups" 
		"Sam_Final_Updated_Scene:lightFogSE1.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[139]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[140]" ""
		5 0 "Sam_Final_Updated_SceneRN" "|Sam_Final_Updated_Scene:GodRays2|Sam_Final_Updated_Scene:coneShape2.instObjGroups" 
		"Sam_Final_Updated_Scene:lightFogSE2.dagSetMembers" "Sam_Final_Updated_SceneRN.placeHolderList[141]" 
		"Sam_Final_Updated_SceneRN.placeHolderList[142]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode renderSetup -n "renderSetup";
	rename -uid "0D18DF2D-41F7-C59B-C934-A2BE4ED4CCB1";
createNode renderSetupLayer -n "DepthPass";
	rename -uid "EBFD2153-41B1-D50F-EE22-1AA74D5207A2";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
createNode renderLayer -n "rs_DepthPass";
	rename -uid "510E273B-446E-F5CE-4414-BBA7374A46CB";
	setAttr ".rndr" no;
	setAttr ".do" 1;
createNode collection -n "collection1";
	rename -uid "923A762D-4895-AEF4-7FC4-DCBB2BAF96AC";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
	setAttr ".expandedState" yes;
createNode simpleSelector -n "collection1Selector";
	rename -uid "509E54CC-4AF1-3BC8-32BF-2FA9970C5F54";
	setAttr ".ssl" -type "string" (
		"|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush11\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush21\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush\n|Sam_Final_Updated_Scene:Ground\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush37\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush38\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:pCube4\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush44\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush12\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush34\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush13\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush35\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves7\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:THE_Tree\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Rock\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo6\n|pointLight2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:banana\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Short_Palms|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid3\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:Mesh\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves8\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:pCube1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:pCube6\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:pCube2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush40\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush42\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves5\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush9\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:bush\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Short_Palms|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo4\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo3\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo12\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo2\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo7\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo6\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TallSwampTrees|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin:pCylinder1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Logan_sTrees|Sam_Final_Updated_Scene:JungleTreeByLS1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo6\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo11\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo3\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo10\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:palm1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo9\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:FallenTrunk\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TwistyTree\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:Palm");
createNode materialOverride -n "Depthpass";
	rename -uid "E863907B-41EF-F04D-6EA2-17A6792E9011";
	addAttr -s false -ci true -sn "atv" -ln "attrValue" -at "message";
createNode lambert -n "Ramp";
	rename -uid "3C1EDC05-4E80-CFD5-D5F4-AA97D0B7FCD7";
createNode shadingEngine -n "lambert3SG";
	rename -uid "B0DFEDBD-48C2-8915-E34B-138A4292F934";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "5375EEF7-499A-BDDC-DF1F-3B834E02E4EF";
createNode projection -n "projection1";
	rename -uid "3C2D12A8-4FDF-3416-3EC0-FE90F0699648";
	setAttr ".vt1" -type "float2" 1.8654823 0.71923113 ;
	setAttr ".vt2" -type "float2" 1.8654823 0.71923113 ;
	setAttr ".vt3" -type "float2" 1.8654823 0.71923113 ;
createNode ramp -n "ramp1";
	rename -uid "58FCB05E-47DA-A51C-DD49-C48FBCC19B98";
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0.48809522390365601;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "75A5FD0F-4714-2408-EB09-5ABEB116E3CC";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7B5A4377-4008-2B63-B7EE-A4855405F849";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -666.76596079321291 -651.43153076394162 ;
	setAttr ".tgi[0].vh" -type "double2" 677.28160484675413 24.514569854602136 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -564.28570556640625;
	setAttr ".tgi[0].ni[0].y" 38.571430206298828;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 50;
	setAttr ".tgi[0].ni[1].y" 38.571430206298828;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -257.14285278320312;
	setAttr ".tgi[0].ni[2].y" 38.571430206298828;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 357.14285278320312;
	setAttr ".tgi[0].ni[3].y" 38.571430206298828;
	setAttr ".tgi[0].ni[3].nvs" 18306;
createNode materialOverride -n "Shadow";
	rename -uid "46DC0D5E-43E0-6874-275B-B59DFD1FEF0E";
	addAttr -s false -ci true -sn "atv" -ln "attrValue" -at "message";
	setAttr ".sen" no;
createNode lambert -n "lambert4";
	rename -uid "61A25145-4E3A-FC53-F6E8-A6B99BD9E2D8";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "5000ABFD-4268-555B-5AA9-08A9D665B2AF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "CDB6F2B8-46B1-CFC7-2140-72AA852F0D7A";
createNode renderSetupLayer -n "Shadows";
	rename -uid "84DB3F5E-4D5A-06F6-0A32-629561895322";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
createNode renderLayer -n "rs_Shadows";
	rename -uid "ED729CBF-4B1A-F429-80DA-54B51F26EA45";
	setAttr ".rndr" no;
	setAttr ".do" 2;
createNode collection -n "Shadows1";
	rename -uid "2BD6E4A8-48B6-4BE3-11F5-1591D258ADE3";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
createNode simpleSelector -n "collection2Selector";
	rename -uid "8AE0038D-4C42-7AD4-F6FC-8A9EA4A13CFE";
	setAttr ".ssl" -type "string" (
		"|pointLight2\n|pointLight3\n|pointLight4\n|Sam_Final_Updated_Scene:ambientLight1\n|Sam_Final_Updated_Scene:SecondaryDirectionalLight\n|Sam_Final_Updated_Scene:GodRays2\n|Sam_Final_Updated_Scene:GodRays1\n|persp1|areaLight1\n|persp1|areaLight2\n|persp1|areaLight3\n|persp1|areaLight4\n|persp1|areaLight5\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush11\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:THE_Tree\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush38\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:bush\n|Sam_Final_Updated_Scene:Ground\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves7\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush12\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush13\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush35\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush44\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush34\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Sam_WithBoys:Mesh\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TwistyTree\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:Rock\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Logan_sTrees|Sam_Final_Updated_Scene:JungleTreeByLS1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush21\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:FallenTrunk\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:banana\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced8|Sam_Final_Updated_Scene:Bamboo13\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo12\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced2|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:BananaTrees|Sam_Final_Updated_Scene:BananaTree\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Short_Palms|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves5\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Short_Palms|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:grid3\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo6\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo11\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo3\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo13\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo7\n|Sam_Final_Updated_Scene:Fog|Sam_Final_Updated_Scene:Fog2\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:Bamboo11\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced|Sam_Final_Updated_Scene:Bamboo4\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:SmallBushes|Sam_Final_Updated_Scene:Leaves8\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:Palm\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TallSwampTrees|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin2:pCylinder1\n"
		+ "|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush37\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Rocks|Sam_Final_Updated_Scene:pCube4\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Ferns|Sam_Final_Updated_Scene:Bush42\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Palms|Sam_Final_Updated_Scene:palm1\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:Bamboo|Sam_Final_Updated_Scene:BambooNotReferenced1|Sam_Final_Updated_Scene:Bamboo6\n|Sam_Final_Updated_Scene:Set__CHANGE_ONLY_SLIGHTLY|Sam_Final_Updated_Scene:TallSwampTrees|Sam_Final_Updated_Scene:Sam_WithBoys:Sam_Final_Scene:SwampTallTreeNoLeaves_JonathanFranklin:pCylinder1");
createNode materialOverride -n "Shadows2";
	rename -uid "8321CACC-4A1D-10AF-1656-4EA7E2FB17D5";
	addAttr -s false -ci true -sn "atv" -ln "attrValue" -at "message";
createNode lambert -n "lambert5";
	rename -uid "566A033A-4C13-7B5C-BF47-039081972605";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "0079D0B1-467C-1E9F-AF0C-CA8B95AB3E78";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "D6676485-4C34-36D6-6560-039F777ED8F9";
createNode renderSetupLayer -n "Color";
	rename -uid "7BD0086C-4F4B-D3A4-1F17-A9B314CC0BA9";
	addAttr -ci true -sn "expandedState" -ln "expandedState" -min 0 -max 1 -at "bool";
createNode renderLayer -n "rs_Color";
	rename -uid "1687E500-482C-5A3D-7D16-4EA6A5032D12";
	setAttr ".do" 3;
createNode collection -n "collection3";
	rename -uid "E48BD2A0-4620-E6A0-394D-33B88F4290FD";
createNode simpleSelector -n "collection3Selector";
	rename -uid "FC1CAF2E-46DA-D16E-A3F4-E9AE4E592F44";
select -ne :time1;
	setAttr ".o" 87;
	setAttr ".unw" 87;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 359 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 161 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 100 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 115 ".r";
select -ne :lightList1;
	setAttr -s 15 ".l";
select -ne :defaultTextureList1;
	setAttr -s 100 ".tx";
select -ne :lambert1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
	setAttr -s 9 ".t";
select -ne :defaultRenderGlobals;
	setAttr ".gama" 0.75;
select -ne :defaultRenderQuality;
	setAttr ".ert" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 15 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHideFaceDataSet;
	setAttr -s 5 ".dnsm";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "YB_SuperFrontShape1.iog" "ImageProjectionRigRN.phl[1]";
connectAttr "Sam_Final_Updated_SceneRN.phl[1]" ":lightEditorRoot.dsm" -na;
connectAttr "Sam_Final_Updated_SceneRN.phl[2]" ":lightEditorRoot.dsm" -na;
connectAttr "Sam_Final_Updated_SceneRN.phl[3]" ":lightEditorRoot.dsm" -na;
connectAttr "cameraShape1.coi" "Sam_Final_Updated_SceneRN.phl[4]";
connectAttr "Sam_Final_Updated_SceneRN.phl[5]" "Sam_Final_Updated_SceneRN.phl[6]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[7]" "Sam_Final_Updated_SceneRN.phl[8]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[9]" "Sam_Final_Updated_SceneRN.phl[10]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[11]" "Sam_Final_Updated_SceneRN.phl[12]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[13]" "Sam_Final_Updated_SceneRN.phl[14]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[15]" "Sam_Final_Updated_SceneRN.phl[16]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[17]" "Sam_Final_Updated_SceneRN.phl[18]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[19]" "Sam_Final_Updated_SceneRN.phl[20]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[21]" "Sam_Final_Updated_SceneRN.phl[22]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[23]" "Sam_Final_Updated_SceneRN.phl[24]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[25]" "Sam_Final_Updated_SceneRN.phl[26]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[27]" "Sam_Final_Updated_SceneRN.phl[28]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[29]" "Sam_Final_Updated_SceneRN.phl[30]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[31]" "Sam_Final_Updated_SceneRN.phl[32]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[33]" "Sam_Final_Updated_SceneRN.phl[34]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[35]" "Sam_Final_Updated_SceneRN.phl[36]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[37]" "Sam_Final_Updated_SceneRN.phl[38]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[39]" "Sam_Final_Updated_SceneRN.phl[40]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[41]" "Sam_Final_Updated_SceneRN.phl[42]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[43]" "Sam_Final_Updated_SceneRN.phl[44]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[45]" "Sam_Final_Updated_SceneRN.phl[46]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[47]" "Sam_Final_Updated_SceneRN.phl[48]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[49]" "Sam_Final_Updated_SceneRN.phl[50]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[51]" "Sam_Final_Updated_SceneRN.phl[52]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[53]" "Sam_Final_Updated_SceneRN.phl[54]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[55]" "Sam_Final_Updated_SceneRN.phl[56]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[57]" "Sam_Final_Updated_SceneRN.phl[58]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[59]" "Sam_Final_Updated_SceneRN.phl[60]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[61]" "Sam_Final_Updated_SceneRN.phl[62]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[63]" "Sam_Final_Updated_SceneRN.phl[64]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[65]" "Sam_Final_Updated_SceneRN.phl[66]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[67]" "Sam_Final_Updated_SceneRN.phl[68]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[69]" "Sam_Final_Updated_SceneRN.phl[70]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[71]" "Sam_Final_Updated_SceneRN.phl[72]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[73]" "Sam_Final_Updated_SceneRN.phl[74]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[75]" "Sam_Final_Updated_SceneRN.phl[76]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[77]" "Sam_Final_Updated_SceneRN.phl[78]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[79]" "Sam_Final_Updated_SceneRN.phl[80]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[81]" "Sam_Final_Updated_SceneRN.phl[82]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[83]" "Sam_Final_Updated_SceneRN.phl[84]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[85]" "Sam_Final_Updated_SceneRN.phl[86]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[87]" "Sam_Final_Updated_SceneRN.phl[88]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[89]" "Sam_Final_Updated_SceneRN.phl[90]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[91]" "Sam_Final_Updated_SceneRN.phl[92]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[93]" "Sam_Final_Updated_SceneRN.phl[94]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[95]" "Sam_Final_Updated_SceneRN.phl[96]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[97]" "Sam_Final_Updated_SceneRN.phl[98]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[99]" "Sam_Final_Updated_SceneRN.phl[100]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[101]" "Sam_Final_Updated_SceneRN.phl[102]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[103]" "Sam_Final_Updated_SceneRN.phl[104]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[105]" "Sam_Final_Updated_SceneRN.phl[106]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[107]" "Sam_Final_Updated_SceneRN.phl[108]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[109]" "Sam_Final_Updated_SceneRN.phl[110]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[111]" "Sam_Final_Updated_SceneRN.phl[112]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[113]" "Sam_Final_Updated_SceneRN.phl[114]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[115]" "Sam_Final_Updated_SceneRN.phl[116]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[117]" "Sam_Final_Updated_SceneRN.phl[118]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[119]" "Sam_Final_Updated_SceneRN.phl[120]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[121]" "Sam_Final_Updated_SceneRN.phl[122]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[123]" "Sam_Final_Updated_SceneRN.phl[124]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[125]" "Sam_Final_Updated_SceneRN.phl[126]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[127]" "Sam_Final_Updated_SceneRN.phl[128]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[129]" "Sam_Final_Updated_SceneRN.phl[130]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[131]" "Sam_Final_Updated_SceneRN.phl[132]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[133]" "Sam_Final_Updated_SceneRN.phl[134]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[135]" "Sam_Final_Updated_SceneRN.phl[136]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[137]" "Sam_Final_Updated_SceneRN.phl[138]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[139]" "Sam_Final_Updated_SceneRN.phl[140]"
		;
connectAttr "Sam_Final_Updated_SceneRN.phl[141]" "Sam_Final_Updated_SceneRN.phl[142]"
		;
connectAttr "rs_Shadows.ri" "areaLight5.rlio[0]";
connectAttr "rs_DepthPass.ri" "areaLightShape5.rlio[0]";
connectAttr "rs_Color.ri" "areaLightShape5.rlio[1]";
connectAttr "rs_Shadows.ri" "areaLight4.rlio[0]";
connectAttr "rs_DepthPass.ri" "areaLightShape1.rlio[0]";
connectAttr "rs_Color.ri" "areaLightShape1.rlio[1]";
connectAttr "rs_Shadows.ri" "areaLight3.rlio[0]";
connectAttr "rs_DepthPass.ri" "areaLightShape2.rlio[0]";
connectAttr "rs_Color.ri" "areaLightShape2.rlio[1]";
connectAttr "rs_Shadows.ri" "areaLight2.rlio[0]";
connectAttr "rs_DepthPass.ri" "areaLightShape6.rlio[0]";
connectAttr "rs_Color.ri" "areaLightShape6.rlio[1]";
connectAttr "rs_Shadows.ri" "areaLight1.rlio[0]";
connectAttr "rs_DepthPass.ri" "areaLightShape7.rlio[0]";
connectAttr "rs_Color.ri" "areaLightShape7.rlio[1]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "rs_DepthPass.ri" "pointLight2.rlio[0]";
connectAttr "rs_Shadows.ri" "pointLight2.rlio[1]";
connectAttr "rs_Color.ri" "pointLightShape2.rlio[0]";
connectAttr "rs_Shadows.ri" "pointLight3.rlio[0]";
connectAttr "rs_DepthPass.ri" "pointLightShape3.rlio[0]";
connectAttr "rs_Color.ri" "pointLightShape3.rlio[1]";
connectAttr "rs_Shadows.ri" "pointLight4.rlio[0]";
connectAttr "rs_DepthPass.ri" "pointLightShape4.rlio[0]";
connectAttr "rs_Color.ri" "pointLightShape4.rlio[1]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lightFogSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "Sam_UpdatedFinalSceneRN.sr";
connectAttr "areaLight1.iog" ":lightEditorRoot.dsm" -na;
connectAttr "areaLight2.iog" ":lightEditorRoot.dsm" -na;
connectAttr "areaLight4.iog" ":lightEditorRoot.dsm" -na;
connectAttr "areaLight3.iog" ":lightEditorRoot.dsm" -na;
connectAttr "areaLight5.iog" ":lightEditorRoot.dsm" -na;
connectAttr "pointLight2.iog" ":lightEditorRoot.dsm" -na;
connectAttr "pointLight3.iog" ":lightEditorRoot.dsm" -na;
connectAttr "pointLight4.iog" ":lightEditorRoot.dsm" -na;
connectAttr "Black.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Black.msg" "materialInfo1.m";
connectAttr "sphereShape1.iog" "lightFogSE.dsm" -na;
connectAttr "lightFog1.oc" "lightFogSE.vs";
connectAttr "lightFogSE.msg" "materialInfo2.sg";
connectAttr "Sam_Final_Updated_SceneRNfosterParent1.msg" "Sam_Final_Updated_SceneRN.fp"
		;
connectAttr "DepthPass.msg" "renderSetup.frl";
connectAttr "Color.msg" "renderSetup.lrl";
connectAttr "rs_DepthPass.msg" "DepthPass.lrl";
connectAttr "renderSetup.lit" "DepthPass.pls";
connectAttr "collection1.msg" "DepthPass.cl";
connectAttr "collection1.msg" "DepthPass.ch";
connectAttr "renderLayerManager.rlmi[1]" "rs_DepthPass.rlid";
connectAttr "collection1Selector.c" "collection1.sel";
connectAttr "DepthPass.lit" "collection1.pls";
connectAttr "DepthPass.nic" "collection1.pic";
connectAttr "Depthpass.msg" "collection1.cl";
connectAttr "Shadow.msg" "collection1.ch";
connectAttr "collection1.lit" "Depthpass.pls";
connectAttr "collection1.en" "Depthpass.pen";
connectAttr "lambert3SG.msg" "Depthpass.atv";
connectAttr "projection1.oc" "Ramp.c";
connectAttr "projection1.oc" "Ramp.ic";
connectAttr "Ramp.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "Ramp.msg" "materialInfo3.m";
connectAttr "projection1.msg" "materialInfo3.t" -na;
connectAttr "place3dTexture1.wim" "projection1.pm";
connectAttr "ramp1.oc" "projection1.im";
connectAttr "place2dTexture1.o" "ramp1.uv";
connectAttr "place2dTexture1.ofs" "ramp1.fs";
connectAttr "place3dTexture1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Ramp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "projection1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "lambert3SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "Depthpass.nxt" "Shadow.prv";
connectAttr "collection1.lit" "Shadow.pls";
connectAttr "collection1.en" "Shadow.pen";
connectAttr "lambert4SG.msg" "Shadow.atv";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "lambert4.msg" "materialInfo4.m";
connectAttr "rs_Shadows.msg" "Shadows.lrl";
connectAttr "DepthPass.nxt" "Shadows.prv";
connectAttr "renderSetup.lit" "Shadows.pls";
connectAttr "Shadows1.msg" "Shadows.cl";
connectAttr "Shadows1.msg" "Shadows.ch";
connectAttr "renderLayerManager.rlmi[2]" "rs_Shadows.rlid";
connectAttr "collection2Selector.c" "Shadows1.sel";
connectAttr "Shadows.lit" "Shadows1.pls";
connectAttr "Shadows.nic" "Shadows1.pic";
connectAttr "Shadows2.msg" "Shadows1.cl";
connectAttr "Shadows2.msg" "Shadows1.ch";
connectAttr "Shadows1.lit" "Shadows2.pls";
connectAttr "Shadows1.en" "Shadows2.pen";
connectAttr "lambert5SG.msg" "Shadows2.atv";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "lambert5.msg" "materialInfo5.m";
connectAttr "rs_Color.msg" "Color.lrl";
connectAttr "Shadows.nxt" "Color.prv";
connectAttr "renderSetup.lit" "Color.pls";
connectAttr "collection3.msg" "Color.cl";
connectAttr "collection3.msg" "Color.ch";
connectAttr "renderLayerManager.rlmi[3]" "rs_Color.rlid";
connectAttr "collection3Selector.c" "collection3.sel";
connectAttr "Color.lit" "collection3.pls";
connectAttr "Color.nic" "collection3.pic";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lightFogSE.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "Black.msg" ":defaultShaderList1.s" -na;
connectAttr "lightFog1.msg" ":defaultShaderList1.s" -na;
connectAttr "Ramp.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rs_DepthPass.msg" ":defaultRenderingList1.r" -na;
connectAttr "rs_Shadows.msg" ":defaultRenderingList1.r" -na;
connectAttr "rs_Color.msg" ":defaultRenderingList1.r" -na;
connectAttr "areaLightShape7.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape6.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape5.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape3.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape4.ltd" ":lightList1.l" -na;
connectAttr "projection1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight4.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight5.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight4.iog" ":defaultLightSet.dsm" -na;
// End of Spencer_Headman_Scene.ma
