<?php /* Smarty version 2.6.18, created on 2014-06-19 11:42:25
         compiled from backup_setting.tpl */ ?>
<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title><?php echo $this->_tpl_vars['title']; ?>
</title>
<meta name="generator" content="editplus">
<meta name="author" content="nuttycoder">
<link href="<?php echo $this->_tpl_vars['template_root']; ?>
/all_purpose_style.css" rel="stylesheet" type="text/css" />
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
<script>
function searchit(){
	document.f1.action = "admin.php?controller=admin_backup&action=backup_setting";
	document.f1.action += "&ip="+document.f1.ip.value;
	document.f1.action += "&session_flag="+document.f1.session_flag.value;
	return true;
}
</script>
<td width="84%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td valign="middle" class="hui_bj"><div class="menu">
<ul>
<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_eth&action=serverstatus">服务状态</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_status&action=latest">系统状态</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
    <li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_backup">配置备份</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_a"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an1.jpg" align="absmiddle"/><a href="admin.php?controller=admin_backup&action=backup_setting">数据同步</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an3.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_backup&action=upgrade">软件升级</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
</ul>
</div></td></tr>

  <tr>
	<td class="" colspan = "7"><table width="100%" border="0" cellspacing="0" cellpadding="0"  class="main_content">

                <TBODY>
				 <TR>
                    <TD >
					<form name ='f1' action='admin.php?controller=admin_backup&action=backup_setting' method=post>
					类型<select  class="wbk"  name="session_flag">
						<option value="" >请选择</option>
						<option value="0" <?php if ($this->_tpl_vars['session_flag'] == '0'): ?>selected<?php endif; ?>>审计日志</option>
						<option value="100" <?php if ($this->_tpl_vars['session_flag'] == '100'): ?>selected<?php endif; ?>>资产权限</option>
						<option value="1" <?php if ($this->_tpl_vars['session_flag'] == '1'): ?>selected<?php endif; ?>>主从数据</option>
						<option value="2" <?php if ($this->_tpl_vars['session_flag'] == '2'): ?>selected<?php endif; ?>>密码文件</option>
					</select>&nbsp;&nbsp;
					IP<input type="text" class="wbk" name="ip" value="<?php echo $this->_tpl_vars['ip']; ?>
">
					&nbsp;&nbsp;<input  type="submit" value="高级搜索" onclick="return searchit();" class="bnnew2">
					</form>
					</TD>
                  </TR>
				  </table></td></tr>
                  <TR><td>
				  <table bordercolor="white" cellspacing="0" cellpadding="5" border="0" width="100%" class="BBtable">
				  <tr>
				  <th class="list_bg" >&nbsp;</th>
                    <th class="list_bg" ><a href = "admin.php?controller=admin_backup&action=backup_setting&orderby1=ip&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
">描述</a></th>
                    <th class="list_bg" ><a href = "admin.php?controller=admin_backup&action=backup_setting&orderby1=ip&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
">同步类型</a></th>
                    <th class="list_bg" ><a href = "admin.php?controller=admin_backup&action=backup_setting&orderby1=ip&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
">同步地址</a></th>
                    <th class="list_bg" ><a href = "admin.php?controller=admin_backup&action=backup_setting&orderby1=port&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
">同步端口</a></th>
                    <th class="list_bg" ><a href = "admin.php?controller=admin_backup&action=backup_setting&orderby1=port&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
">同步协议</a></th>
					<th class="list_bg" >操作</TD>
                  </TR>

            </tr>
			<form name="member_list" action="admin.php?controller=admin_backup&action=backup_setting_del" method="post">
			<?php unset($this->_sections['t']);
$this->_sections['t']['name'] = 't';
$this->_sections['t']['loop'] = is_array($_loop=$this->_tpl_vars['alldev']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['t']['show'] = true;
$this->_sections['t']['max'] = $this->_sections['t']['loop'];
$this->_sections['t']['step'] = 1;
$this->_sections['t']['start'] = $this->_sections['t']['step'] > 0 ? 0 : $this->_sections['t']['loop']-1;
if ($this->_sections['t']['show']) {
    $this->_sections['t']['total'] = $this->_sections['t']['loop'];
    if ($this->_sections['t']['total'] == 0)
        $this->_sections['t']['show'] = false;
} else
    $this->_sections['t']['total'] = 0;
if ($this->_sections['t']['show']):

            for ($this->_sections['t']['index'] = $this->_sections['t']['start'], $this->_sections['t']['iteration'] = 1;
                 $this->_sections['t']['iteration'] <= $this->_sections['t']['total'];
                 $this->_sections['t']['index'] += $this->_sections['t']['step'], $this->_sections['t']['iteration']++):
$this->_sections['t']['rownum'] = $this->_sections['t']['iteration'];
$this->_sections['t']['index_prev'] = $this->_sections['t']['index'] - $this->_sections['t']['step'];
$this->_sections['t']['index_next'] = $this->_sections['t']['index'] + $this->_sections['t']['step'];
$this->_sections['t']['first']      = ($this->_sections['t']['iteration'] == 1);
$this->_sections['t']['last']       = ($this->_sections['t']['iteration'] == $this->_sections['t']['total']);
?>
			<tr  <?php if ($this->_sections['t']['index'] % 2 == 0): ?>bgcolor="f7f7f7"<?php endif; ?>>
				<td><input type="checkbox" name="chk_member[]" value="<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['seq']; ?>
"></td>
				<td><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['desc']; ?>
</td>
				<td><?php if ($this->_tpl_vars['alldev'][$this->_sections['t']['index']]['session_flag'] == '100'): ?>资产权限<?php elseif ($this->_tpl_vars['alldev'][$this->_sections['t']['index']]['session_flag'] == '1'): ?>主从数据<?php elseif ($this->_tpl_vars['alldev'][$this->_sections['t']['index']]['session_flag'] == '2'): ?>密码文件<?php else: ?>审计日志<?php endif; ?> </td>
				<td><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['ip']; ?>
</td>
				<td><span  title="<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['port']; ?>
" ><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['port']; ?>
</span></td>
				<td><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['protocol']; ?>
</td>
				<td>				
					<img src='<?php echo $this->_tpl_vars['template_root']; ?>
/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href='admin.php?controller=admin_backup&action=backup_setting_edit&id=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['seq']; ?>
'>修改</a>
					 | <img src='<?php echo $this->_tpl_vars['template_root']; ?>
/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_backup&action=backup_setting_del&id=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['seq']; ?>
';}">删除</a>
				</td> 
			</tr>
			<?php endfor; endif; ?>
			
                <tr>
	           <td  colspan="3" align="left">
				<input name="select_all" type="checkbox" onClick="javascript:for(var i=0;i<this.form.elements.length;i++){var e=this.form.elements[i];if(e.name=='chk_member[]')e.checked=this.form.select_all.checked;}" value="checkbox">&nbsp;&nbsp;<input type="submit"  value="删除" onClick="my_confirm('确定删除所选?');if(chk_form()) document.member_list.action='admin.php?controller=admin_member&action=delete_all'; else return false;" class="an_02">&nbsp;&nbsp;<input type="button"  value="<?php echo $this->_tpl_vars['language']['Add']; ?>
" onClick="javascript:document.location='admin.php?controller=admin_backup&action=backup_setting_edit';" class="an_02">&nbsp;&nbsp;
		   </td>

		    <td  colspan="4" align="right">
		   			&nbsp&nbsp;&nbsp;共<?php echo $this->_tpl_vars['total']; ?>
个记录  <?php echo $this->_tpl_vars['page_list']; ?>
  页次：<?php echo $this->_tpl_vars['curr_page']; ?>
/<?php echo $this->_tpl_vars['total_page']; ?>
页  <?php echo $this->_tpl_vars['items_per_page']; ?>
个记录/页  转到第<input name="pagenum" type="text" class="wbk" size="2" onKeyPress="if(event.keyCode==13) window.location='admin.php?controller=admin_backup&action=backup_setting&page='+this.value;">页&nbsp;&nbsp;&nbsp;<?php if ($_SESSION['ADMIN_LEVEL'] == 3): ?>  导出：<a href="<?php echo $this->_tpl_vars['curr_url']; ?>
&derive=1" target="hide"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/excel.png" border=0></a><?php endif; ?>
		   </td>
                </tr>
            </form>
		</TBODY>
              </TABLE>
	</td>
  </tr>
</table>

<script language="javascript">

function my_confirm(str){
	if(!confirm(str + "？"))
	{
		window.event.returnValue = false;
	}
}

</script>
</body>
<iframe name="hide" height="0" frameborder="0" scrolling="no"></iframe>
</html>


