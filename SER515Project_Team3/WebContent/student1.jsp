<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.asu.ser515.model.Quiz"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta charset="utf-8">
<title>Student | Grade 1</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
	<div id="header"></div>
	<%
		Quiz quiz = new Quiz();
		//(Quiz) request.getSession().getAttribute("quiz");
		List<String> questions = new ArrayList<String>(); 
				//quiz.getQuestions();
		List<String> answers =  new ArrayList<String>();
				//quiz.getAnswers();
		//List<Integer> quizIds = (ArrayList<Integer>) request.getSession().getAttribute("quizIds");
		/* for (int i = 0; i < questions.size(); i++) {
			Quiz quiz = listofQuiz.get(i);
			quizNames.add(quiz.getQuizname());
			quizIds.add(quiz.getQuiz_id());
		} */
	%>
	<div>
		<h3>Student Grade 1</h3>
	</div>
	<div class="row" style="height: 30vh;">
		<div class="col-sm-6">
			<h1>Space for questions</h1>
			<form method="GET">
			<table id="quizTable" class="table table-bordered">
				<%
					session.setAttribute("action", "load");
					if (questions.size() == 0) {
				%>
				<p align="center">
				<h3>No questions found!!</h3>
				</p>
				<%
					} else {
				%>

				<p align="center">
				<h3>
					You have following quizzes for the course!! <br>
				</h3>
				</p>
				<%
					for (int i = 0; i < questions.size(); i++) {
				%>
				<tr>
					<td><a id="quizURLRow<%=i%>"><%=questions.get(i)%>
					
					</a></td>
				</tr>
				<tr>
				<td>
				<p>
				Hint:<%=answers.get(i)%>
				</p>				
				</td>
				</tr>

				<%
					}
					}
				%>
			</table>
		</form>

		</div>
	</div>
	<div class="row" style="height: 40vh;">
		<div class="col-md-6" id="blocklyDiv" style="height: 40vh;"></div>
		<div class="col-md-6" style="height: 40vh;; background-color: green;">
			<h2 style="color: white;"><b>Console</b></h2>
			<h4 style="color: white;" id="check"></h3>
				<h3 style="color: white;" id="error"></h3>
			<h3 style="color: white;" id="console"></h3>
		</div>
	</div>
	<button class="btn btn-primary" onclick="runCode()" id="runButton">Calculate</button>
	<button class="btn btn-primary" onclick="clearConsole()" id="clearButton">Clear</button>

	<xml xmlns="https://developers.google.com/blockly/xml" id="toolbox"
		style="display: none"> <!-- Dropdown for basic math operators -->
	<!--- <category name="Blocks" colour="%{BKY_MATH_HUE}"> -->
    <block type="math_number"> <field name="NUM">1</field> </block>
		<block type="math_number"> <field name="NUM">2</field> </block>
		<block type="math_number"> <field name="NUM">3</field> </block>
		<block type="math_number"> <field name="NUM">4</field> </block>
		<block type="math_number"> <field name="NUM">5</field> </block>
		<block type="math_number"> <field name="NUM">6</field> </block>
		<block type="math_number"> <field name="NUM">7</field> </block>
		<block type="math_number"> <field name="NUM">8</field> </block>
		<block type="math_number"> <field name="NUM">9</field> </block>
		<block type="math_number"> <field name="NUM">10</field> </block>
		<block type="math_number"> <field name="NUM">11</field> </block>
		<block type="math_number"> <field name="NUM">12</field> </block>
		<block type="math_number"> <field name="NUM">13</field> </block>
		<block type="math_number"> <field name="NUM">14</field> </block>
		<block type="math_number"> <field name="NUM">15</field> </block>
		<block type="math_number"> <field name="NUM">16</field> </block>
		<block type="math_number"> <field name="NUM">17</field> </block>
		<block type="math_number"> <field name="NUM">18</field> </block>
		<block type="math_number"> <field name="NUM">19</field> </block>
		<block type="math_number"> <field name="NUM">20</field> </block>
		<!-- <block type="block_one"> <field name="NUM">1</field> </block> -->
		<!--- <block type="math_subtraction"></block> -->
		<block type="math_arithmetic"></block>
    <sep></sep>
    <block type="text_print"></block>
	<!--</category>--> <sep></sep> </xml>
	<!--<script>
    	var demoWorkspace = Blockly.inject('blocklyDiv',
        {media: './lib/blockly-master/media/',
         toolbox: document.getElementById('toolbox')});
  	</script> -->
	<script src="./lib/blockly-master/blockly_compressed.js"></script>
	<script src="./lib/blockly-master/blocks/colour.js"></script>
  <script src="./lib/blockly-master/blocks/math_student1.js"></script>
  <script src="./lib/blockly-master/blocks/logic.js"></script>
  <script src="./lib/blockly-master/blocks/loops.js"></script>
  <script src="./lib/blockly-master/blocks/list.js"></script>
  <script src="./lib/blockly-master/blocks/procedures.js"></script>
  <script src="./lib/blockly-master/blocks/text.js"></script>
  <script src="./lib/blockly-master/blocks/variables_dynamic.js"></script>
  <script src="./lib/blockly-master/blocks/variables.js"></script>
	<script src="./lib/blockly-master/msg/js/en.js"></script>
	<script src="./lib/blockly-master/javascript_compressed.js"></script>
	<script type="text/javascript" src="./js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./js/header.js"></script>
	<script src="./js/student1.js"></script>
</body>
</html>


