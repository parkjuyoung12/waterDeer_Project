/**
 * 
 */

									var container = document
											.getElementById('map');
									var options = {
										/* center : new kakao.maps.LatLng(
												33.450701, 120.570667), */
										center : new kakao.maps.LatLng(
												35.159973, 126.910116),
										level : 3
									};

									var map = new kakao.maps.Map(container,
											options);
									
									var optionsMarker = {
										    map: map, // drawing manager로 그리기 요소를 그릴 map 객체 
										    drawingMode: [ // drawing manager로 제공할 그리기 요소 모드
										        kakao.maps.drawing.OverlayType.MARKER
										    ],
										    guideTooltip: ['draw'], // 사용자에게 제공할 그리기 가이드 툴팁
										    markerOptions: {
										        draggable: false, 	// 마커를 그리고 나서 드래그 가능하게 한다
										        removable: false 	// 마커를 삭제 할 수 있도록 x 버튼이 표시된다 
										    }
										};
										
										var manager = new kakao.maps.drawing.DrawingManager(optionsMarker);
										
										var position = new kakao.maps.LatLng(35.159973, 126.910116);
										var center = new kakao.maps.LatLng(35.159973, 126.910116);
										var sw = new kakao.maps.LatLng(35.159973, 126.910116);
										var ne = new kakao.maps.LatLng(35.159973, 126.910116);
										var bounds = new kakao.maps.LatLngBounds(sw, ne);
										
										var path = [
										    new kakao.maps.LatLng(35.159973, 126.910116)
										];
										
										manager.put(kakao.maps.drawing.OverlayType.MARKER, position, 1);
										
								