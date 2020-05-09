<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">일기 쓰기</h3>
				</div>
				<!-- /.box-header -->

	<form role="form" method="post" action="/private/register.do">
		<table class="registerTable">
		  <tr>
		    <td style="width: 120px; word-break:break-all">제목</td>
		    <td style="width: 600px; word-break:break-all"><input type="text" name='title' class="form-control" style="width:90%" placeholder="Enter Title"></td>
		  </tr>
		  <tr>
		  	<td style="width: 120px; word-break:break-all">내용 ( <strong><span id="registerByte">0</span></strong> byte )</td>
		  	<td style="width: 600px; word-break:break-all"><textarea class="form-control" name="content" rows="6" style="width:90%; resize: vertical;" placeholder="Enter ..."></textarea></td>
		  </tr>
		  <tr>
		    <td style="width: 120px; word-break:break-all">일자</td>
		    <td><input type="date" name='datetime' class="form-control" min="2020-02-16"></td>
		  </tr>
		  <tr>
		  	<td style="width: 120px; word-break:break-all">글쓴이</td>
		  	<td style="width: 600px; word-break:break-all"><input type="text" name="writer" class="form-control" readonly value="${loginUser.name}"></td>
		  </tr>
		</table>

		<input type="submit" class="btn btn-primary" value="기록하기" />
	</form>


			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>
