<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>{{$title}}</title>
<meta name="generator" content="editplus">
<meta name="author" content="nuttycoder">
<link href="{{$template_root}}/all_purpose_style.css" rel="stylesheet" type="text/css" />
</head>
<script>
function searchit(){
	document.f1.action = "admin.php?controller=admin_pro&action=dev_group";
	document.f1.action += "&groupname="+document.f1.groupname.value;
	return true;
}

function $(id) {
	return !id ? null : document.getElementById(id);
}

function toggle_group(oid, obj, isChild) {
	obj = obj ? obj : $('a_'+oid);
	if(!conf) {
		var conf = {'show':'[-]','hide':'[+]'};
	}
	var obody = $(oid+'_0');
	var ids = oid.split('_');
	if(obody.style.display == 'none') {		
		if(isChild){
			obody.style.display = '';
		}else{
			var tbodys = document.getElementsByTagName('tbody');
			for(var i=0; i<tbodys.length; i++){
				if(tbodys[i].attributes.length>1&&tbodys[i].attributes.name!=undefined){
					if(tbodys[i].attributes.name.nodeValue==oid){
						tbodys[i].style.display = '';
					}
				}
			}
		}		
		obj.innerHTML = conf.show;
	} else {
		if(isChild){
			obody.style.display = 'none';
		}else{
			var tbodys = document.getElementsByTagName('tbody');
			for(var i=0; i<tbodys.length; i++){
				if(tbodys[i].attributes.length>1){
					if(tbodys[i].attributes.name!=undefined&&tbodys[i].attributes.name.nodeValue==oid){
						tbodys[i].style.display = 'none';
						if(tbodys[i].attributes.aid!=undefined&&document.getElementById(tbodys[i].attributes.aid.nodeValue)!=undefined)
						document.getElementById(tbodys[i].attributes.aid.nodeValue).innerHTML = conf.hide;
					}else if(tbodys[i].id.length>oid.length&&tbodys[i].id.substring(0, oid.length)==oid){
						if(tbodys[i].attributes.aid!=undefined&&document.getElementById(tbodys[i].attributes.aid.nodeValue)!=undefined)
						document.getElementById(tbodys[i].attributes.aid.nodeValue).innerHTML = conf.hide;
						tbodys[i].style.display = 'none';
						var as = document.getElementsByTagName("a");
						for(var j=0; j<as.length; j++){
							if(as[j].id.substring(0, 2)=='a_')
							if(as[j].id.substring(0, oid.length+2)=='a_'+oid){
								as[j].innerHTML = conf.hide;
							}
						}
					}
				}
			}
		}
		obj.innerHTML = conf.hide;
	}
	window.parent.reinitIframe();
}
</script>
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
<td width="84%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td valign="middle" class="hui_bj"><div class="menu">
<ul>
    <li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_member">用户管理</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=dev_index">设备管理</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_a"><img src="{{$template_root}}/images/an1.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=dev_group">目录管理</a><img src="{{$template_root}}/images/an3.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_member&action=workdept">用户属性</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=systemtype">系统类型</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=sshkey">SSH公私钥</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_member&action=radiususer">RADIUS用户</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=passwordkey">密码密钥</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	{{if $smarty.session.ADMIN_LEVEL eq 1}}
    <li class="me_b"><img src="{{$template_root}}/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_member&action=online">在线用户</a><img src="{{$template_root}}/images/an33.jpg" align="absmiddle"/></li>
	{{/if}}
</ul>{{if $smarty.get.ldapid}}<span class="back_img"><A href="admin.php?controller=admin_pro&action=dev_group{{if $ldapinfo.level eq 2 or $ldapinfo.level eq 0}}&ldapid={{$ldapinfo.ldapid}}{{/if}}&back=1"><IMG src="{{$template_root}}/images/back1.png" 
      width="80" height="30" border="0"></A></span>{{/if}}
</div></td></tr>
	
   <tr>
	<td class="" colspan = "4"><table width="100%" border="0" cellspacing="0" cellpadding="0"  class="main_content">

                <TBODY>
				 <TR>
                    <TD >
					<form name ='f1' action='admin.php?controller=admin_pro&action=dev_index' method=post>
					组名: <input type="text" class="wbk" name="groupname">
					&nbsp;&nbsp;<input  type="submit" value="高级搜索" onclick="return searchit();" class="bnnew2">
					</form>
					</TD>
                  </TR>
				  </table></td></tr>
  <tr>
	<td class="">	
	<table width="100%" border="0" cellspacing="0" cellpadding="0"  class="BBtable">
                  <TR>
					<th class="list_bg" width="3%"></TD>
                    <th class="list_bg" width="35%" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=groupname&orderby2={{$orderby2}}&ldapid={{$ldapid}}" >资源组名称</a></TD>
					{{if $_config.LDAP}}
					<th class="list_bg" width="10%" ><a href = "admin.php?controller=admin_pro&action=dev_group&orderby1=level&orderby2={{$orderby2}}&ldapid={{$ldapid}}">目录级别</a></th>
					{{/if}}
					<th class="list_bg" width="8%" ><a href = "admin.php?controller=admin_pro&action=dev_group&orderby1=attribute&orderby2={{$orderby2}}&ldapid={{$ldapid}}">属性</a></th>
					<th class="list_bg" width="5%" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=count&orderby2={{$orderby2}}&ldapid={{$ldapid}}" >服务器数</a></TD>
					<th class="list_bg" width="5%" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=mcount&orderby2={{$orderby2}}&ldapid={{$ldapid}}" >用户数</a></TD>
					<th class="list_bg" width="20%" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=description&orderby2={{$orderby2}}&ldapid={{$ldapid}}" >描述</a></TD>
					<th class="list_bg" >操作</TD>
                  </TR>

            </tr>
			{{if $_config.LDAP}}
			{{section name=t loop=$alldev}}
			<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
				<TD  onClick="toggle_group('ldap_{{$smarty.section.t.index}}', $('a_ldap_{{$smarty.section.t.index}}'))" class=td25 width="30" align="center">{{if $alldev[t].children_ct gt 0}}<span class="td25"><A id=a_ldap_{{$smarty.section.t.index}} href="javascript:;">[+]</A></span>{{/if}}</TD>
				<td> {{$alldev[t].groupname}}</td>
				{{if $_config.LDAP}}
				<td> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[t].level}}'>{{if $alldev[t].level eq 1}}一级目录{{elseif $alldev[t].level eq 2}}二级目录{{elseif $alldev[t].level eq 3}}三级目录{{elseif $alldev[t].level eq 4}}四级目录{{elseif $alldev[t].level eq 5}}五级目录{{else}}资源组{{/if}}</a></td>
				{{/if}}				
				<td>{{if !$alldev[t].attribute }}全部{{elseif $alldev[t].attribute eq 1}}用户{{else}}主机{{/if}}</td>
				<td><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].id}}&from=dir'>{{$alldev[t].count}}</a></td>
				<td><a href='admin.php?controller=admin_member&ldapid={{$alldev[t].id}}&from=dir'>{{$alldev[t].mcount}}</a></td>
				<td>{{$alldev[t].description}}</td>
				<td>
				{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
				<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[t].id}}" >编辑</a> | 
				<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[t].id}}';}">删除</a>
				{{/if}}
				</td> 
			</tr>{{if $alldev[t].children_ct gt 0}}
				{{section name=tt loop=$alldev[t].children}}
				<TBODY name="ldap_{{$smarty.section.t.index}}" id="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}" aid="a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}" style="DISPLAY: none">
				<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
					<TD class=td25></TD>
					<td onClick="toggle_group('ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}', $('a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}'))"> &nbsp;&nbsp;{{if $alldev[t].children[tt].children_ct gt 0}}<span class="td25"><A id=a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}} href="javascript:;">[+]</A></span>{{/if}}<a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].id}}'>{{$alldev[t].children[tt].groupname}}</a></td>
					{{if $_config.LDAP}}
					<td> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[t].children[tt].level}}'>{{if $alldev[t].children[tt].level eq 1}}一级目录{{elseif $alldev[t].children[tt].level eq 2}}二级目录{{else}}资源组{{/if}}</a></td>
					{{/if}}
					<td>{{if !$alldev[t].children[tt].attribute }}全部{{elseif $alldev[t].children[tt].attribute eq 1}}用户{{else}}主机{{/if}}</td>
					<td><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].id}}&from=dir'>{{$alldev[t].children[tt].count}}</a></td>
					<td><a href='admin.php?controller=admin_member&ldapid={{$alldev[t].children[tt].id}}&from=dir'>{{$alldev[t].children[tt].mcount}}</a></td>
					<td>{{$alldev[t].children[tt].description}}</td>
					<td>
					{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
					<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[t].children[tt].id}}" >编辑</a> | 
					<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[t].children[tt].id}}';}">删除</a> 
					{{/if}}
					</td> 
				</tr>	
				</TBODY>
				{{section name=ttt loop=$alldev[t].children[tt].children}}
					<TBODY name="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}"  id="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}" style="DISPLAY: none">
					
					<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
						<td class=td25 width="20">&nbsp;</TD>
						<td onClick="toggle_group('ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}', $('a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}'))">&nbsp;&nbsp;&nbsp;&nbsp;{{if $alldev[t].children[tt].children[ttt].children_ct gt 0}}<span class="td25"><A id=a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}} href="javascript:;">[+]</A></span>{{/if}}<a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].id}}'>{{$alldev[t].children[tt].children[ttt].groupname}}</a></td>
						{{if $_config.LDAP}}
						<td> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[t].children[tt].children[ttt].level}}'>{{if $alldev[t].children[tt].children[ttt].level eq 1}}一级目录{{elseif $alldev[t].children[tt].children[ttt].level eq 2}}二级目录{{elseif $alldev[t].children[tt].children[ttt].level eq 3}}三级目录{{elseif $alldev[t].children[tt].children[ttt].level eq 4}}四级目录{{elseif $alldev[t].children[tt].children[ttt].level eq 5}}五级目录{{else}}资源组{{/if}}</a></td>
						{{/if}}
						<td>{{if !$alldev[t].children[tt].children[ttt].attribute }}全部{{elseif $alldev[t].children[tt].children[ttt].attribute eq 1}}用户{{else}}主机{{/if}}</td>
						<td><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].count}}</a></td>
						<td><a href='admin.php?controller=admin_member&gid={{$alldev[t].children[tt].children[ttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].mcount}}</a></td>
						<td>{{$alldev[t].children[tt].children[ttt].description}}</td>
						<td>
						{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
						<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[t].children[tt].children[ttt].id}}" >编辑</a> | 
						<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[t].children[tt].children[ttt].id}}';}">删除</a> 
						{{/if}}
						</td> 
					</tr>
					{{section name=tttt loop=$alldev[t].children[tt].children[ttt].children}}
					<TBODY name="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}" id="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}" style="DISPLAY: none">
					
					<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
						<td class=td25 width="20">&nbsp;</TD>
						<td onClick="toggle_group('ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}', $('a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}'))">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{if $alldev[t].children[tt].children[ttt].children[tttt].children_ct gt 0}}<span class="td25"><A id=a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}} href="javascript:;">[+]</A></span>{{/if}}<a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].children[tttt].id}}'>{{$alldev[t].children[tt].children[ttt].children[tttt].groupname}}</a></td>
						{{if $_config.LDAP}}
						<td> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[t].children[tt].children[ttt].children[tttt].level}}'>{{if $alldev[t].children[tt].children[ttt].children[tttt].level eq 1}}一级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].level eq 2}}二级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].level eq 3}}三级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].level eq 4}}四级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].level eq 5}}五级目录{{else}}资源组{{/if}}</a></td>
						{{/if}}
						<td>{{if !$alldev[t].children[tt].children[ttt].children[tttt].attribute }}全部{{elseif $alldev[t].children[tt].children[ttt].children[tttt].attribute eq 1}}用户{{else}}主机{{/if}}</td>
						<td><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].children[tttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].children[tttt].count}}</a></td>
						<td><a href='admin.php?controller=admin_member&gid={{$alldev[t].children[tt].children[ttt].children[tttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].children[tttt].mcount}}</a></td>
						<td>{{$alldev[t].children[tt].children[ttt].children[tttt].description}}</td>
						<td>
						{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
						<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[t].children[tt].children[ttt].children[tttt].id}}" >编辑</a> | 
						<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[t].children[tt].children[ttt].children[tttt].id}}';}">删除</a> 
						{{/if}}
						</td> 
					</tr>
					{{section name=ttttt loop=$alldev[t].children[tt].children[ttt].children[tttt].children}}
					<TBODY name="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}" id="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}_{{$smarty.section.ttttt.index}}" style="DISPLAY: none">
					
					<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
						<td class=td25 width="20">&nbsp;</TD>
						<td onClick="toggle_group('ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}_{{$smarty.section.ttttt.index}}', $('a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}_{{$smarty.section.ttttt.index}}'))">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{if $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children_ct gt 0}}<span class="td25"><A id=a_ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}_{{$smarty.section.ttttt.index}} href="javascript:;">[+]</A></span>{{/if}}<a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].id}}'>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].groupname}}</a></td>
						{{if $_config.LDAP}}
						<td> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].level}}'>{{if $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].level eq 1}}一级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].level eq 2}}二级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].level eq 3}}三级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].level eq 4}}四级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].level eq 5}}五级目录{{else}}资源组{{/if}}</a></td>
						{{/if}}						
						<td>{{if !$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].attribute }}全部{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].attribute eq 1}}用户{{else}}主机{{/if}}</td>
						<td><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].count}}</a></td>
						<td><a href='admin.php?controller=admin_member&gid={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].mcount}}</a></td>
						<td>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].description}}</td>
						<td>
						{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
						<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].id}}" >编辑</a> | 
						<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].id}}';}">删除</a> 
						{{/if}}
						</td> 
					</tr>
					{{section name=tttttt loop=$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children}}
					<TBODY name="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}_{{$smarty.section.ttttt.index}}" id="ldap_{{$smarty.section.t.index}}_{{$smarty.section.tt.index}}_{{$smarty.section.ttt.index}}_{{$smarty.section.tttt.index}}_{{$smarty.section.ttttt.index}}_{{$smarty.section.tttttt.index}}" style="DISPLAY: none">
					
					<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
						<td class=td25 width="20">&nbsp;</TD>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].id}}'>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].groupname}}</a></td>
						{{if $_config.LDAP}}
						<td> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].level}}'>{{if $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].level eq 1}}一级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].level eq 2}}二级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].level eq 3}}三级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].level eq 4}}四级目录{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].level eq 5}}五级目录{{else}}资源组{{/if}}</a></td>
						{{/if}}
						<td>{{if !$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].attribute }}全部{{elseif $alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].attribute eq 1}}用户{{else}}主机{{/if}}</td>
						<td><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].count}}</a></td>
						<td><a href='admin.php?controller=admin_member&gid={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].id}}&from=dir'>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].mcount}}</a></td>
						<td>{{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].description}}</td>
						<td>
						{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
						<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].id}}" >编辑</a> | 
						<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[t].children[tt].children[ttt].children[tttt].children[ttttt].children[tttttt].id}}';}">删除</a> 
						{{/if}}
						</td> 
					</tr>
					{{/section}}
					</TBODY>
					{{/section}}
					</TBODY>

					{{/section}}
					</TBODY>

					{{/section}}
					</TBODY>
				{{/section}}
				{{/if}}
			{{/section}}
			{{else}}
			{{section name=nt loop=$alldev}}
					<tr  {{if $smarty.section.t.index % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
						<td class=td25 width="20">&nbsp;</TD>
						<td width="20%">{{$alldev[nt].groupname}}</a></td>
						{{if $_config.LDAP}}
						<td width="20%"> <a href='admin.php?controller=admin_pro&action=dev_group&level={{$alldev[nt].level}}'>{{if $alldev[nt].level eq 1}}一级目录{{elseif $alldev[nt].level eq 2}}二级目录{{else}}资源组{{/if}}</a></td>
						{{/if}}
						<td>{{if !$alldev[nt].attribute }}全部{{elseif $alldev[nt].attribute eq 1}}用户{{else}}主机{{/if}}</td>
						<td width="5%"><a href='admin.php?controller=admin_pro&action=dev_index&gid={{$alldev[nt].id}}&from=dir'>{{$alldev[nt].count}}</a></td>
						<td width="5%"><a href='admin.php?controller=admin_member&gid={{$alldev[nt].id}}&from=dir'>{{$alldev[nt].mcount}}</a></td>
						<td width="20%">{{$alldev[nt].description}}</td>
						<td>
						{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
						<img src='{{$template_root}}/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id={{$alldev[nt].id}}" >编辑</a> | 
						<img src='{{$template_root}}/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id={{$alldev[nt].id}}';}">删除</a> {{if $alldev[nt].level>0 and $_config.LDAP}}| 
						<img src='{{$template_root}}/images/file.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=dev_group&ldapid={{$alldev[nt].id}}" >查看子目录</a>{{/if}}
						{{/if}}
						</td> 
					</tr>
					{{/section}}
			{{/if}}
			<tr>
	           <td  colspan="3" align="left">
				{{if $smarty.session.ADMIN_LEVEL eq 1 or $smarty.session.ADMIN_LEVEL eq 3 or $smarty.session.ADMIN_LEVEL eq 21 or $smarty.session.ADMIN_LEVEL eq 101}}
				<input size="30" type="button"  value="添加新节点"  onClick="location.href='admin.php?controller=admin_pro&action=devgroup_edit&ldapid={{$ldapid}}'" class="an_06">
				{{/if}}
		   </td>
               
	           <td  colspan="4" align="right">
		   			共{{$total}}个记录  {{$page_list}}  页次：{{$curr_page}}/{{$total_page}}页  {{$items_per_page}}个记录/页  转到第<input name="pagenum" type="text" class="wbk" size="2" onKeyPress="if(event.keyCode==13) window.location='admin.php?controller=admin_pro&action=dev_group&page='+this.value;">页
		   </td>
		</tr>
              </TABLE>	</td>
  </tr>
</table>

<script language="javascript">

function my_confirm(str){
	if(!confirm(str + "？"))
	{
		window.event.returnValue = false;
	}
}
window.parent.menu.document.getElementById('_tree').style.display='';
window.parent.menu.document.getElementById('devtree').style.display='none';
window.parent.menu.document.getElementById('ldaptree').style.display='';
window.parent.menu.document.getElementById('mtree').style.display='none';
window.parent.menu.document.getElementById('mldaptree').style.display='none';
window.parent.menu.cururl='ldaptree';
</script>
</body>
<iframe name="hide" height="0" frameborder="0" scrolling="no"></iframe>
</html>


