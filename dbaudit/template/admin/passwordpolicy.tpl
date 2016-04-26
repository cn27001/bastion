<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>{{$language.Master}}{{$language.page}}面</title>
<meta name="generator" content="editplus">
<meta name="author" content="nuttycoder">
<link href="{{$template_root}}/cssjs/all_purpose_style.css" rel="stylesheet" type="text/css" />

</head>

<body>

<style type="text/css">

a {
    color: #003499;
    text-decoration: none;
}
 
a:hover {
    color: #000000;
    text-decoration: underline;
}
 

 
</style>
<td width="84%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td valign="middle" class="hui_bj"><div class="menu">{{include file="tabs.tpl"}}</div></td></tr>

  
  <tr><td><table bordercolor="white" cellspacing="0" cellpadding="5" border="0" width="100%" class="BBtable">
<form name="f1" method=post OnSubmit='return check()' action="admin.php?controller=admin_config&action=passwordpolicy_save">
	
	{{assign var="trnumber" value=0}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>{{$language.Minimumpasswordlength}}:</td>
		<td align=left>
		<input type="text" class="wbk" name="login_pwd_length" value="{{$loginsetting.login_pwd_length}}" />{{$language.greaterthaneight}}
		</td>
		
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>错误登陆锁定:</td>
		<td align=left>
		<input type="text" class="wbk" name="login_times" value="{{$loginsetting.login_times}}" />{{$language.fivenum}}
		</td>
		
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>{{$language.Time}}{{$language.Set}}:</td>
		<td align=left>
		<input type="text" class="wbk" name="logintimeout" value="{{$loginsetting.logintimeout}}" />{{$language.minutes}}
		</td>
		
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>自动密码:自动生成的密码长度</td>
		<td align=left>
		<input type="text" class="wbk" name="pwdautolength" value="{{$loginsetting.pwdautolength}}" />
		</td>
		
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>记忆旧密码次数</td>
		<td align=left>
		<input type="text" class="wbk" name="oldpassnumber" value="{{$loginsetting.oldpassnumber}}" />
		</td>
		
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>密码强度:</td>
		<td align=left>
		<input type="checkbox" name="pwdstrong1" value="1" {{if $loginsetting.pwdstrong1}} checked{{/if}} />包含数字
		<input type="checkbox" name="pwdstrong2" value="1" {{if $loginsetting.pwdstrong2}} checked{{/if}}  />包含字母
		<input type="checkbox" name="pwdstrong4" value="1" {{if $loginsetting.pwdstrong4}} checked{{/if}}  />包含特殊字符
		</td>
		
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>密码有效期:</td>
		<td align=left>
		密码有效期：<input type="text" class="wbk" name="pwdexpired" value="{{$loginsetting.pwdexpired}}" />,
		提前<input type="text" class="wbk" name="pwdahead" value="{{$loginsetting.pwdahead}}" />天提醒用户注意
		</td>
		
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>相同用户允许同时登录的最大值:</td>
		<td align=left>
		<input type="text" class="wbk" name="onlinecountmax" value="{{$loginsetting.onlinecountmax}}" />
		</td>
		
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>密码存贮:</td>
		<td align=left>
		<select name="encrypt" id="encrypt">
		<option value="yes" {{if $udf.encrypt eq 'yes'}}selected{{/if}}>加密</option>
		<option value="no" {{if $udf.encrypt eq 'no'}}selected{{/if}}>明文</option>
		</select>
		</td>
		
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>认证调试:</td>
		<td align=left>
		<select name="debug" >
		<option value="yes" {{if $udf.debug eq 'yes'}}selected{{/if}}>打开</option>
		<option value="no" {{if $udf.debug eq 'no'}}selected{{/if}}>关闭</option>
		</select>
		</td>
		
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}><td>令牌漂移:</td>
		<td align=left>
		<input type="text" class="wbk" name="nr_minute" value="{{$udf.nr_minute}}" />
		</td>
		
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
					<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
			<td  align="center" colspan=2><input type="submit"  value="{{$language.Save}}" class="an_02"></td>
		</tr>

	</table>
	<input type="hidden" name="id" value="{{$sid}}" />
	<input type="hidden" name="encrypt2" value="{{$udf.encrypt}}" />
</form>

		</table>
	</td>
  </tr>
</table>


<script language="javascript">
<!--
function check()
{
/*
   if(!checkIP(f1.ip.value) && f1.netmask.value != '32' ) {
	alert('地址为{{$language.HostName}}时，掩码应为32');
	return false;
   }   
   if(checkIP(f1.ip.value) && !checknum(f1.netmask.value)) {
	alert('请{{$language.Input}}正确掩码');
	return false;
   }
*/
   if(document.getElementById("encrypt").options[document.getElementById("encrypt").options.selectedIndex].value!='{{$udf.encrypt}}'){
		if(confirm("所有的密码将被转换,请注意要先备份!")==false){
			return false;
		}
   }
   return true;

}//end check
// -->

function checkIP(ip)
{
	var ips = ip.split('.');
	if(ips.length==4 && ips[0]>=0 && ips[0]<256 && ips[1]>=0 && ips[1]<256 && ips[2]>=0 && ips[2]<256 && ips[3]>=0 && ips[3]<256)
		return ture;
	else
		return false;
}

function checknum(num)
{

	if( isDigit(num) && num > 0 && num < 65535)
		return ture;
	else
		return false;

}

function isDigit(s)
{
var patrn=/^[0-9]{1,20}$/;
if (!patrn.exec(s)) return false;
return true;
}

</script>
</body>
</html>


