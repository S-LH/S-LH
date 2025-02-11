<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ditu.aspx.cs" Inherits="san_lun_hotel.地图" %>

<!--<!doctype html>
	
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<style type="text/css">
			body,
			html {
				width: 100%;
				height: 100%;
				margin: 0;
				font-family: "微软雅黑";
			}

			#l-map {
				height: 100%;
				width: 100%;
			}

		
			#result {
				height: 400px;
				overflow-y: auto;
			}

		</style>
		<link rel="icon" href="ico/三轮饭店.ico">
		<%--<script type="text/javascript" src="https://webapi.amap.com/maps?v=2.0&key=b6303979800a9e6393ec6c8ff7751733"></script>--%>
		<script type="text/javascript" src="//api.map.baidu.com/api?v=3.0&ak=E4805d16520de693a3fe707cdc962045"></script>
		
		<script src="https://code.bdstatic.com/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<title>饭店地址</title>
	</head>
	<body>
		<div id="l-map"></div>
		<div id="driving_way">
		

		</div>
	</body>
</html>
	
<script type="text/javascript">

    // 百度地图API功能
    var map = new BMap.Map("l-map");
	map.centerAndZoom(new BMap.Point(113.063688, 28.277292), 14);//经纬度
	
	
    //var start = new BMap.Point(116.302, 40.050) //"起点";
    //var end = new BMap.Point(113.063688, 28.277292); //"终点";
    var routePolicy = [BMAP_TRANSIT_POLICY_RECOMMEND, BMAP_TRANSIT_POLICY_LEAST_TIME, BMAP_TRANSIT_POLICY_LEAST_TRANSFER,
        BMAP_TRANSIT_POLICY_LEAST_WALKING, BMAP_TRANSIT_POLICY_AVOID_SUBWAYS, BMAP_TRANSIT_POLICY_FIRST_SUBWAYS
    ];
    var transit = new BMap.TransitRoute(map, {
        renderOptions: {
            map: map,
            panel: 'result'
        },
        policy: 0,

	});

   
</script>
	-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>饭店地址</title>
    <style>
        #container {
            width: 1500px;
            height: 1000px;
            border: 1px solid #999;
        }
    </style>
	<link rel="icon" href="ico/三轮饭店.ico">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=A9W8pwNGgc7DZKGHEYwj4x4EOrxObRAf"></script>
</head>

<body>
    <div id="container"></div>

    <script>
       
        //1.创建地图实例
        var map = new BMap.Map("container");

        //2.设置中心点坐标  BMap命名空间下的Point类来创建一个坐标点
        var point = new BMap.Point(113.06438, 28.275222);

        //3.地图初始化，同时设置地图展示级别  (3-19)
        map.centerAndZoom(point, 20);

        //4.鼠标滚轮  开启鼠标滚轮缩放
        map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放

        //5.添加控件
        //平移缩放控件 NavigationControl   PC端默认位于地图左上方，它包含控制地图的平移和缩放的功能
        map.addControl(new BMap.NavigationControl());


        //比例尺 ScaleControl 默认位于地图左下方

    </script>
        <script src="myadmin/js/jquery.min.js"></script>
	</body>
	</html>


