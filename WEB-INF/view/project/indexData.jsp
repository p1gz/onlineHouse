<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/include/taglib.jsp"%>
<script type="text/javascript">
	getRgxz();	
	function showImgGht(){
		wx.previewImage({
		    current: 'http://47.99.99.232:80/UpLoad/'+imageFolder+'/ghimg.jpg?v='+staticVersion, // 当前显示图片的http链接
		    urls: ['http://47.99.99.232:80/UpLoad/'+imageFolder+'/ghimg.jpg?v='+staticVersion] // 需要预览的图片http链接列表
		});
	}
	getIndexDataJson();
	function getIndexDataJson(){
		$.ajax({
	        url: "/indexDataJson.do",
	        type: "post",
	        async: true,
	        dataType: "json",
	        success: function(data) {
	        	//ws.send(data.userName);
	        	setIndexImg();	
	        	setUserMsg(data);
	        	setLsMsg(HouseName,HouseTel);
	        	setHdMsg();
	        }
	    });		
	}
</script>
<style type="text/css">
body{background:#ffffff;}
.hd-wlistt p{font-size: 14px;color:#000000}
.hd-wlistt span{font-size: 1.6rem;padding-left: 4px;color: #777777;}
#userMsg p{font-size: 14px;color: #000000}
</style>
<!-- <script type="text/javascript" src="/project/ds/jsSource/index.js?v=1.3"></script> -->
		<div class="b-index-w" style="padding-bottom:50px;">
			<div class="index-img">
				<img id="bjtPic"  style="width:100%;height:100%;"/>
			</div>
            <div class="index-xm-w clearfix" id="lsMsg">
				<%-- <div class="xm-w-left">
					<p class="xm-name">${HouseName}</p>
					<p>
						咨询电话：<span class="tel-num">${HouseTel}</span>
					</p>
				</div>
				<div class="xm-w-right">
					<a href="tel:${HouseTel}">电话</a>
				</div> --%>
			</div>		
			<div id="userMsg">
				<%-- <div class="xm-w-left clearfix" style="width:85%;line-height:40px;" id="userMsg">
					<p class="xm-name" style="float:left;padding-right:10px;font-weight:normal"><span style="font-weight:normal">姓名:</span>${name}</p>
					<p><span style="font-weight:normal">身份证:</span><span>${idCard}</span></p>
				</div>
				<div class="xm-w-close">
					<a href="javascript:void(0);" onclick="goBack()" >退出</a>
				</div> --%>
			</div>
			<div class="xm-hd-w">
				<div class="hd-wlist" id="hdMsg">
					<div class="hd-wlistt">
						<h3 class="hd-title1">公测活动</h3>
						<p>${ReadTestStartDate}<span style="font-size:1.5rem;padding-left:4px;">开始</span></p>
						<p>${ReadTestEndDate}<span style="font-size:1.5rem;padding-left:4px;">结束</span></p>
					</div>
					<div class="hd-wlistt">
						<h3 class="hd-title2">正式活动</h3>
						<p>${ReadStartDate}<span style="font-size:1.5rem;padding-left:4px;">开始</span></p>
						<p>${ReadEndDate}<span style="font-size:1.5rem;padding-left:4px;">结束</span></p>
					</div>
				</div>
				<div class="hd-wlist  layer-photos-demo" id="layer-photos-demo">
					<img id="ghtPic" style="width:95%;height:162px;"  onclick="showImgGht()" />
				</div>
			</div>
			<div style="position:fixed;width:100%;bottom:46px;left:10px;right:0px;z-index:1002;height:40px;line-height:40px;">
					<input type="checkbox" style="opacity:1;width:18px;height:18px;"><span style="color:#2a7dd2;padding-left:4px;">我已阅读购买协议</span>
				</div>
			<!--弹出按钮-->
			<div class="index-button">
				<button class="J-ac-btn" data-type="bottom" onclick="openJac()">
				进入
				</button>
			</div>
			<!--弹出按钮结束-->
			<!--弹出内容-->
			<div id="J-bottom" style="display: none">
				<div class="i-dc-w">
					<h3 style="color:#888888;top:35%">认购须知</h3>
					<div class="dc-w-cont rgxzText" id="rgxzText"
						style="height:400px; overflow-y: scroll">
						<p>
							1.本次开盘正式在线选房时间为：<br />2018年xx月xx日xx:xx，<br />
							登录收藏时间：2018年xx月xx日xx:xx，<br /> <span
								style="color: #ff0000; font-weight: bold">正式开盘时间:2018年xx月xx日xx:xx-xx:xx<br /></span>
						</p>
						<p>
							2.验证码一天同一手机号码最多发送10次，不要频繁发送，以免收不到短信，若在线选车位期间发现身份验证不通过等相关问题，请及时跟您的置业顾问联系。
						</p>
						<p>
							3.本次所有参与在线选房的客户必须为参与【xxxxx】房源意向登记的客户，且提前支付意向金并签署《xxxxx房源申购报名确认单》。
						</p>
						<p>
							4.客户需在规定时间内完成在线选房流程，成功认购后，认购人凭“成功认购”短信或者系统成功选购“成交信息截图”自开盘之日起3日内（不含开盘当天）携带有效身份证件、户口本、结婚证、诚意金收据,报名确认单及相关资料至售楼处补签协议或合同，开发商不另行催告；如未能按时补签定购书的，开发商有权没收定金并收回该房源另行出售。
						</p>
						<p>
							5.本人对xxxxxx房源的现状（包括所处位置、楼层、周边环境、长度、宽度、高度、停车便利度、消防设施、集水井设施、管线布置、公建设施分布状况、单元通道、入户通道、电梯位置、地下车库出入口、有无柱子、不利因素等）均已知悉并认可。本人知悉车位交付时，若面积有差异，仍维持合同总价款不变。

						</p>
						<p>6.本项目为预售商品房，销售平面图的尺寸与其他情况以实际交付为准。</p>
						<p>7.本次预售商品房明码标价销售，所有显示价格为该房源的表价。本次在线选房开盘结束后剩余房源的销售地点：xxxxxxxxxxxx</p>
						<p>8.本次在线开盘体验活动最终解释权归xxxxxxxx有限公司。以上条款请仔细阅读，对其内容及事项无异议后方可开始线上选房。</p>
					</div>
					
					<div class="bottom_buttons clearfix">
						    <a href="javascript:void(0);" class="buttons1" onclick="colseForm()">取消</a>
							<a href="javascript:void(0);"  onclick="loadfangyuan()" class="buttons2">确认</a>
					</div>
				</div>
			</div>			
		</div>
<script id="userMsg1" type="text/html">
<div class="xm-peplet">
				<p class="xm-p1">姓名:<span style="color: #777777;">{{realName}}</span></p>
				<p class="xm-p2">身份证:<span style="color: #777777;">{{userCode}}</span></p>
                <div class="xm-w-close">
					<a href="javascript:void(0);" onclick="goBack()">退出</a>
				</div>
			</div>		
</script>
<script id="lsMsg1" type="text/html">
    <div class="xm-w-left">
					<span class="xm-name">{{HouseName}}</span>
					<span class="IsTest"  style="border-radius:3px;margin-top:7px;color:#ffffff;font-size:12px;padding:3px 4px">正式</span>
					<p>
						<span style="font-weight:normal;color:#777777">咨询电话：</span><span class="tel-num">{{HouseTel}}</span>
					</p>
	</div>
	<div class="xm-w-right">
					<a href="tel:{{HouseTel}}">电话</a>
	</div>		
</script>
<script id="hdMsg1" type="text/html">
    <div class="hd-wlistt">
						<h3 class="hd-title1">公测活动</h3>
						<p>{{ReadTestStartDate}}<span style="font-size:1.5rem;padding-left:4px;">开始</span></p>
						<p>{{ReadTestEndDate}}<span style="font-size:1.5rem;padding-left:4px;">结束</span></p>
					</div>
					<div class="hd-wlistt">
						<h3 class="hd-title2">正式活动</h3>
						<p>{{ReadStartDate}}<span style="font-size:1.5rem;padding-left:4px;">开始</span></p>
						<p>{{ReadEndDate}}<span style="font-size:1.5rem;padding-left:4px;">结束</span></p>
					</div>
</script>
<script>
		function setUserMsg(dsData){
			 var html1 = template('userMsg1', dsData);
		     document.getElementById('userMsg').innerHTML = html1;
		}
		
		function setLsMsg(hsName,hsTel){
			 var dsData={
					 HouseName:hsName,
					 HouseTel:hsTel
					 
			 }
			 var html2 = template('lsMsg1', dsData);
		     document.getElementById('lsMsg').innerHTML = html2;
		}
		
		//function setHdMsg(ReadStartDate,ReadEndDate,ReadTestStartDate,ReadTestEndDate){
		function setHdMsg(){
			 var ReadStartDate1='等待活动开启通知';
			 var ReadEndDate1='等待活动开启通知';
			 var ReadTestStartDate1='等待活动开启通知';
			 var ReadTestEndDate1='等待活动开启通知';
			 if(IsShowReadStartDate==='1'){
				 ReadStartDate1 =ReadStartDate;
			 }
			 if(IsShowReadEndDate==='1'){
				 ReadEndDate1 =ReadEndDate;
			 }
			 if(IsShowReadTestStartDate==='1'){
				 ReadTestStartDate1=ReadTestStartDate;
			 }
			 
			 if(IsShowReadTestEndDate==='1'){
				 ReadTestEndDate1=ReadTestEndDate;
			 }
			 var dsData={
					 ReadStartDate:ReadStartDate1, 
					 ReadEndDate:ReadEndDate1,
					 ReadTestStartDate:ReadTestStartDate1,
					 ReadTestEndDate:ReadTestEndDate1	 
			 }
			 var html3 = template('hdMsg1', dsData);
		     document.getElementById('hdMsg').innerHTML = html3;
		     setIsTest();
		}		
</script>