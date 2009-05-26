<head>
	<meta name="layout" content="main" />
	<title>Cuanto: Create User</title>

	<p:css name='../js/yui/2.6.0/button/assets/skins/sam/button'/>

	<yui:javascript dir="button" file="button-min.js" version="2.6.0"/>
	<g:javascript>
		YAHOO.util.Event.onDOMReady(function () {
			var oButton = new YAHOO.widget.Button("addUserButton");
		});
	</g:javascript>

</head>

<body>

	<div class="cuantoBody">
		<span class="smaller">
			<g:link action="list">User List</g:link>
		</span>

		<h1>Create User</h1>

		<g:hasErrors bean="${person}">
		<div class="errors">
			<g:renderErrors bean="${person}" as="list" />
		</div>
		</g:hasErrors>
		<g:form action="save">
			<div>
				<table class="usertable">
				<tbody>

					<tr>
						<td><label for="username" class="widerLabel">Login Name:</label></td>
						<td class="${hasErrors(bean:person,field:'username','errors')}">
							<input type="text" id="username" name="username" value="${person.username?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td><label for="userRealName" class="widerLabel">Full Name:</label></td>
						<td class="${hasErrors(bean:person,field:'userRealName','errors')}">
							<input type="text" id="userRealName" name="userRealName" value="${person.userRealName?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td><label for="passwd" class="widerLabel">Password:</label></td>
						<td class="${hasErrors(bean:person,field:'passwd','errors')}">
							<input type="password" id="passwd" name="passwd" value="${person.passwd?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td><label for="enabled" class="widerLabel">Enabled:</label></td>
						<td class="${hasErrors(bean:person,field:'enabled','errors')}">
							<g:checkBox name="enabled" value="${person.enabled}" ></g:checkBox>
						</td>
					</tr>

					<tr>
						<td><label for="email" class="widerLabel">Email:</label></td>
						<td class="${hasErrors(bean:person,field:'email','errors')}">
							<input type="text" id="email" name="email" value="${person.email?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td align="left">Assign Roles:</td>
						<td>
							<g:each in="${authorityList}">
								<g:checkBox name="${it.authority}"/> ${it.authority.encodeAsHTML()}<br/>
							</g:each>
						</td>
					</tr>
				</tbody>
				</table>
			</div>

			<div>
				<span><input id="addUserButton" type="submit" value="Add User" /></span>
			</div>

		</g:form>

	</div>
</body>