<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
<title>Insert title here</title>
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
    border-color: #E54E2B;
}
.tab.tab-md .tab-menu > ul > li > .tab-item {
    line-height: 46px;
}
.tab .tab-menu > ul > li > .tab-item {
    display: inline-block;
    font-size: 14px;
    font-weight: 700;
    color: #4C4C4C;
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
</style>
</head>
<body>
<div class="tab tab-md mg-b-4u" id="c_size">
	<!-- DeskTop -->
	<div class="tab-menu tab-horizon">
		<ul>
			<li class="on"><a href="#" class="tab-item" data-tab-contents="Tab 1" data-tab-contents-group="A">Tab 1</a></li>
			<li class=""><a href="#" class="tab-item" data-tab-contents="Tab 2" data-tab-contents-group="A">Tab 2</a></li>
			<li class=""><a href="#" class="tab-item" data-tab-contents="Tab 3" data-tab-contents-group="A">Tab 3</a></li>
			<li class="disabled"><a href="#" class="tab-item" data-tab-contents="Tab 4" data-tab-contents-group="A" disabled="">Tab
					4</a></li>
		</ul>
	</div>
</div>
</body>
</html>