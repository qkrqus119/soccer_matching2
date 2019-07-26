<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Bootstrap.css-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!--JQuery.css-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="resources/css/match-register.css">
    <!--Bootstrap Jquery.min.js-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!--Proper.js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <!--BootStrarp.js-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
    <!-- JQuery UI -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<link rel="stylesheet" href="resources/css/match-register.css"/>
    
</head>

<body>
	<div class="container-fluid">
		<div id="header" style="width:100%; height:10vh;text-align:center;line-height:10vh;">매치 등록하기</div>
    	<div class="row">
    		<div class="col-lg-3"></div> <!-- 왼쪽 여백 -->
    		<div class="col-lg-6">
    			<div class="map_wrap">
    				<div id="map" style="height:45vh;overflow:hidden;"></div>

    				<div id="menu_wrap" class="bg_white">
        				<div class="option"><div>
              	 	 		<form onsubmit="searchPlaces(); return false;">
                    			키워드 : <input type="text" value="" id="keyword" size="15"> 
                    		<button type="submit">검색하기</button> 
		                	</form>
        	    		</div>
        				</div>
        			<hr>
        			<ul id="placesList"></ul>
        			<div id="pagination"></div>
    				</div>
    			</div>
		    			<form action="/action_page.php" class="needs-validation" novalidate>
						    <div class="input-group mb-3">
							    <div class="input-group-prepend">				      
							      <span class="input-group-text">주 소</span>
							    </div>
							    <div class="input-group-prepend" style="flex-direction:column;width:89.5%" >
							    	<input type="text" class="form-control" id="address" placeholder="지도에서 선택해주세요" name="address" required disabled>					    
							    	<input type="text" class="form-control" id="detailedAddress" placeholder="상세주소 입력" name="detailAddress" required>
							    </div>
						     </div>
						     <div class="row">
							     <div class="col-lg-4">
								     <div class="input-group mt-3 mb-3">
								     	<div class="input-group-prepend">
								     		<span class="input-group-text">경기 일정</span>
								     	</div>			      
									    <input type="text" class="form-control" id="date" name="date" placeholder="달력 선택" disabled required>
									 </div>
									 <div class="input-group mt-3 mb-3">
								     	<div class="input-group-prepend">
								     		<span class="input-group-text">경기 타입</span>
								     	</div>
								      	<select id="game_type" name="game_type">
								      		<option value="" selected disabled>경기타입</option>
								      		<option value="3 vs 3">3 vs 3</option>
								      		<option value="4 vs 4">4 vs 4</option>
								      		<option value="5 vs 5">5 vs 5</option>
								      		<option value="6 vs 6">6 vs 6</option>
								     	</select>				      
								 	</div>
								</div>
							     <div class="col-lg-4">
						     		<div class="input-group mt-3 mb-3">
						     			<div class="input-group-prepend">
							     			<span class="input-group-text">시작 시간</span>
							     		</div>
									    <select id="start_time" name="start_time"></select>
									    <select id="start_time_minutes" name="start_time_minutes">
									      	<option value="0" selected>00분</option>
									      	<option value="30">30분</option>
									    </select>
									</div>
									<div class="input-group mt-3 mb-3">
								     	<div class="input-group-prepend">
								     			<span class="input-group-text">참가 성별</span>
								     	</div>
								      	<select id="gender" name="gender">
								      		<option value="" selected disabled>성별</option>
								      		<option value="남성매치">남성매치</option>
								      		<option value="여성매치">여성매치</option>
								      		<option value="누구나">누구나</option>
								         </select>
						     		</div>
							     </div>
							     <div class="col-lg-4">
							     	<div class="input-group mt-3 mb-3">
							     		<div class="input-group-prepend">
								     		<span class="input-group-text">종료 시간</span>
								     	</div>
									    <select id="end_time" name="end_time"></select>
									    <select id="end_time_minutes" name="end_time_minutes">
										   	<option value="0" selected>00분</option>
									      	<option value="30">30분</option>
									    </select>
								    </div>
								    <div class="input-group mt-3 mb-3">
								    	<div class="input-group-prepend">
						     				<span class="input-group-text">신청가능인원</span>
						     			</div>
								      	<select id="number_appliable" name="number_appliable">
								      		<option value="" selected disabled>0명</option>
								      		<option value="1명">1명</option>
								      		<option value="2명">2명</option>
								      		<option value="3명">3명</option>
								      		<option value="4명">4명</option>
								     	</select>
						     		</div>
					     		</div>
							     <div class="input-group mt-3 mb-3">
							     		<div class="input-group-prepend"  style="width:98%;padding-left:15px;height:10vh;">
							     			<span class="input-group-text">상세 정보</span>
											<textarea class="form-control" id="detailInfo" name="detailInfo" style="height:10vh;"></textarea>						      	
							     		</div>
							     </div>
						     </div>
						     <div class="buttongroups" style="display:flex;flex-direction:row;justify-content:space-between;width:70%;margin-left:auto;margin-right:auto;">
							    <button type="button" class="btn btn-dark" onclick="window.location.href='main.html'" style="width:100px">홈화면</button>
							    <button type="submit" class="btn btn-dark" style="width:100px">등&nbsp;록</button>
							    <button type="reset" class="btn btn-dark" style="width:100px">내용 초기화</button>
						    </div>
						  </form>
						</div>
    		<div class="col-lg-3"></div> <!-- 오른쪽 여백 -->
    	</div>
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6b187315c60d45782c7546f0eaf4d3bc&libraries=services"></script>
	<script src="resources/js/match-register-map.js"></script>
	<script src="resources/js/match-register.js"></script>
	<script src="resources/js/member-datepicker.js"></script>
</body>

</html>