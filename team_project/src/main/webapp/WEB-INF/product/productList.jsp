<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
.tab .tab-menu.tab-horizon:before {
    position: absolute;
    bottom: 0;
    left: -16px;
    right: -16px;
    height: 1px;
    content: '';
    background-color: #D8D8D8;
}
.tab .tab-menu ul,.tab .tab-menu ol,.tab .tab-menu dl {
    width: 100%;
    height: auto;
    /* overflow: hidden; */
    list-style: none;
    margin: 0;
    padding: 0;
    cursor: default;
    position: relative;
}
.tab .tab-menu ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.tab .tab-menu > ul > li {
    display: inline-block;
    width: auto;
    height: auto;
}
.tab .tab-menu ul > .tab .tab-menu li, .tab .tab-menu ol >.tab .tab-menu li {
    width: 100%;
    height: auto;
    overflow: visible;
    position: relative;
    float: left;
}
.tab .tab-menu > ul > li.on > .tab-item {
    color: #E54E2B;
    border-color: #172126;
}
.tab.tab-md .tab-menu > ul > li > .tab-item {
    line-height: 46px;
}
.tab .tab-menu > ul > li > .tab-item {
    display: inline-block;
    font-size: 14px;
    font-weight: 700;
    color: #172126;
    line-height: 46px;
    padding: 0 4px;
    border-bottom: 2px solid transparent;
}
.tab .tab-menu > ul > li + li {
    margin-left: 32px;
}
.tab .tab-menu > ul > li {
    display: inline-block;
    width: auto;
    height: auto;
}
.tab .tab-menu ul:after, .tab .tab-menu ol:after,.tab .tab-menu dl:after {
    content: '';
    display: table;
    clear: both;
}

.productList{
	width: 90%;
	margin: auto;
}
.tab .tab-menu.tab-horizon:before {
    /* position: absolute; */
    bottom: 0;
    left: -16px;
    right: -16px;
    height: 1px;
    content: '';
    background-color: #D8D8D8;
}
.mg-b-4u{
	width: 90%;
	margin: auto;
}
.mg-b-4u .tab-horizon ul{
	text-align: center;
}
.mg-b-4u .tab-horizon ul li:hover{
	border-color: #172126;
}
</style>

<div class="tab tab-md mg-b-4u" id="c_size">
	<!-- DeskTop -->
	<div class="tab-menu tab-horizon">
		<ul>
			<li class="on"><a href="#" class="tab-item" data-tab-contents="Tab 1" data-tab-contents-group="A" style="color: #172126;">전체 매물</a></li>
			<li class=""><a href="#" class="tab-item" data-tab-contents="Tab 2" data-tab-contents-group="A" style="color: #172126;">디지털/가전</a></li>
			<li class=""><a href="#" class="tab-item" data-tab-contents="Tab 3" data-tab-contents-group="A" style="color: #172126;">아웃도어/스포츠</a></li>
			<li class=""><a href="#" class="tab-item" data-tab-contents="Tab 3" data-tab-contents-group="A" style="color: #172126;">홈/생활</a></li>
		</ul>
	</div>
</div>

<input type="hidden" value="${id}" id="msgid">
<select id="sort" name="sort">
	<option value="product_seq desc">최신순</option>
	<option value="nowprice desc">현재가 높은 순</option>
	<option value="nowprice asc">현재가 낮은 순</option>
</select>
<div class="productList">
  <div class="row" id="row">
  <!-- grid -->
	</div>
</div>



