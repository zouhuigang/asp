<%@ Control Language="C#" AutoEventWireup="true" CodeFile="a_left.ascx.cs" Inherits="cn_Around_a_left" %>
<link rel="stylesheet" href="../../css/pro_menu.css" type="text/css" />
<link rel="stylesheet" href="../../css/jquery-tool.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="../../css/tcal.css" />
	<script type="text/javascript" src="../../js/tcal.js"></script> 

<!-- 代码部分begin -->
	<div id="content">
		<ul id="expmenu-freebie">
			<li>
				<!-- Start Freebie -->
				<ul class="expmenu">
				
				
				<li>
						<div class="header">
							<span class="label">行程目的</span>
												</div>
						<ul class="menu" style="display:block">
						  <li></label>
                            <select name="select" style="width:200px; height:30px !important; line-height:30px;">
                              <option> &nbsp;&nbsp;观光旅游&nbsp;&nbsp; </option>
                            </select>
						  </li>
						</ul>
				  </li>
				
				<li>
						<div class="header">
							<span class="label">出发城市</span>
												</div>
						<ul class="menu" style="display:block">
							<li><select name="select3" style="width:200px; height:30px;">
   <option>加利福尼亚-尔湾</option>
 </select></li>
						</ul>
				  </li>
					
					
					<li>
						<div class="header">
							<span class="label">抵达城市</span>
													</div>
						<ul class="menu" style="display:block">
							<li><select name="select4" style="width:200px; height:30px;">
   <option>亚利桑纳州-盐湖城</option>
 </select>
 </label>
   </li>
						</ul>
					</li>
					
					<li>
						<div class="header">
							<span class="label">出发日期　　　起飞时间</span>
												</div>
						<ul class="menu" style="display:block">
							<li><table width="220" border="0">
  <tr>
    <td width="100"><form action="#">
		<!-- add class="tcal" to your input field -->
		<div><input type="text" name="date" class="tcal" value="" /></div>
	</form></td>
    <td> <select name="select3" style="width:95px; height:30px;">
<option>8:30AM</option>
     <option>9:00AM</option>
     <option>9:30AM</option>
     <option>10:00AM</option>
     <option>10:30AM</option>
     <option>11:00AM</option>
     <option>11:30AM</option>
	    <option>12:00AM</option>
     <option>12:30PM</option>
     <option>13:00PM</option>
     <option>13:30PM</option>
     <option>14:00PM</option>
     <option>14:30PM</option>
     <option>15:00PM</option>
	    <option>15:30PM</option>
     <option>16:00PM</option>
     <option>16:30PM</option>
     <option>17:00PM</option>
     <option>17:30PM</option>
     <option>18:00PM</option>
     <option>18:30PM</option>
	    <option>19:00PM</option>
     <option>19:30PM</option>
     <option>20:00PM</option>
     <option>20:30PM</option>
     <option>21:00PM</option>
     <option>21:30PM</option>
     <option>22:00PM</option>
     <option>22:30PM</option>
     <option>23:00PM</option>
     <option>23:30PM</option>
     <option>24:00PM</option> </select>	</td>
  </tr>
</table>

	

	
	
	</li>
						</ul>
					</li>
					
		<li>
						<div class="header">
							<span class="label">回程日期　　　起飞时间</span>
												</div>
						<ul class="menu" style="display:block">
							<li><table width="220" border="0">
  <tr>
    <td width="100"><form action="#">
		<!-- add class="tcal" to your input field -->
		<div><input type="text" name="date" class="tcal" value="" /></div>
	</form></td>
    <td><select name="select3" style="width:95px; height:30px;overflow-y:auto; overflow:auto;">
   <option>8:30AM</option>
     <option>9:00AM</option>
     <option>9:30AM</option>
     <option>10:00AM</option>
     <option>10:30AM</option>
     <option>11:00AM</option>
     <option>11:30AM</option>
	    <option>12:00AM</option>
     <option>12:30PM</option>
     <option>13:00PM</option>
     <option>13:30PM</option>
     <option>14:00PM</option>
     <option>14:30PM</option>
     <option>15:00PM</option>
	    <option>15:30PM</option>
     <option>16:00PM</option>
     <option>16:30PM</option>
     <option>17:00PM</option>
     <option>17:30PM</option>
     <option>18:00PM</option>
     <option>18:30PM</option>
	    <option>19:00PM</option>
     <option>19:30PM</option>
     <option>20:00PM</option>
     <option>20:30PM</option>
     <option>21:00PM</option>
     <option>21:30PM</option>
     <option>22:00PM</option>
     <option>22:30PM</option>
     <option>23:00PM</option>
     <option>23:30PM</option>
     <option>24:00PM</option>

	 
 </select></td>
  </tr>
</table></li>
						</ul>
				  </li>
		
		
		<li>
						<div class="header">
							<span class="label">乘客人数</span>
												</div>
						<ul class="menu" style="display:block">
							<li><select name="select4">
   <option>1</option>
 </select></li>
						</ul>
				  </li>
		
		<li>
						<div class="header">
							<span class="label">喜欢乘坐飞机型号</span>
												</div>
						<ul class="menu" style="display:block">
						  <li><select name="select4" style="width:200px; height:30px;">
   <option>北环代选</option>
 </select><br /><br />
 <a href="search.asp"><img src="../../images/bt06.jpg" border="0" /></a></li> 
						</ul>
				  </li>
				</ul>
				<!-- End Freebie -->
			</li>
		</ul>
	</div>
<!--    <script src="../../js/jquery-1.8.2.min.js"></script>
-->	<script src="../../js/jquery.tools.min.js"></script>
     <!-- 代码部分end -->	
