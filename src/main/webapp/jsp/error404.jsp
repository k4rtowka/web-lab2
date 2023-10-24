<%@ page contentType="text/html; charset=UTF-8"  language="java" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>404</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/error.css">
</head>
<body>

<div class="error">

  <div class="wrap">
    <div class="404">
            <pre><code>
	            <span class="green">&lt;!</span><span>DOCTYPE html</span><span class="green">&gt;</span>
                <span class="orange">&lt;html&gt;</span>
                <span class="orange">&lt;style&gt;</span>
                * {
		        <span class="green">everything</span>:<span class="blue">awesome</span>;
                }
                <span class="orange">&lt;/style&gt;</span>
                <span class="orange">&lt;body&gt;</span>
              ERROR 404!
				FILE NOT FOUND!
				<span class="comment">&lt;!--The file you are looking for,
					is not where you think it is.--&gt;
		        </span>
                <span class="orange"></span>
            </code></pre>
    </div>
    <br />
    <span class="info">
            <br />
            <span class="orange">&nbsp;&lt;/body&gt;</span>
            <br/>
            <span class="orange">&lt;/html&gt;</span>
        </span>
  </div>

</div>
<span id="back"><a href="${pageContext.request.contextPath}/index.jsp">GO BACK!</a></span>
</body>
</html>