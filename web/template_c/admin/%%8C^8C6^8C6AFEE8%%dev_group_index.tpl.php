<?php /* Smarty version 2.6.18, created on 2014-06-28 02:30:00
         compiled from dev_group_index.tpl */ ?>
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
<script>
function searchit(){
	document.f1.action = "admin.php?controller=admin_pro&action=dev_group";
	document.f1.action += "&groupname="+document.f1.groupname.value;
	return true;
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
    <li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=dev_index">设备列表</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
    <li class="me_a"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an1.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=dev_group">设备目录</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an3.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=resource_group">系统用户组</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_pro&action=sshkey">SSH公私钥上传</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_autorun&action=autobackup_list">备份管理</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_autorun&action=autobackup_list&type=run">巡检管理</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
	<li class="me_b"><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an11.jpg" align="absmiddle"/><a href="admin.php?controller=admin_autorun&action=autotemplate">巡检脚本</a><img src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/an33.jpg" align="absmiddle"/></li>
</ul><?php if ($_GET['ldapid']): ?><span class="back_img"><A href="admin.php?controller=admin_pro&action=dev_group<?php if ($this->_tpl_vars['ldapinfo']['level'] == 2 || $this->_tpl_vars['ldapinfo']['level'] == 0): ?>&ldapid=<?php echo $this->_tpl_vars['ldapinfo']['ldapid']; ?>
<?php endif; ?>&back=1"><IMG src="<?php echo $this->_tpl_vars['template_root']; ?>
/images/back1.png" 
      width="80" height="30" border="0"></A></span><?php endif; ?>
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
	<td class=""><table width="100%" border="0" cellspacing="0" cellpadding="0"  class="BBtable">
                <TBODY>
				  
                  <TR>
                    <th class="list_bg" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=groupname&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
" >服务器组名称</a></TD>
					<th class="list_bg" ><a href = "admin.php?controller=admin_pro&action=dev_group&orderby1=level&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
">目录级别</a></th>
					<th class="list_bg" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=count&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
" >服务器数</a></TD>
					<th class="list_bg" ><a href="admin.php?controller=admin_pro&action=dev_group&orderby1=description&orderby2=<?php echo $this->_tpl_vars['orderby2']; ?>
" >描述</a></TD>
					<th class="list_bg" >操作</TD>
                  </TR>

            </tr>
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
 <td> <a href='admin.php?controller=admin_pro&action=dev_index&gid=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['id']; ?>
'><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['groupname']; ?>
</a></td>
 <td> <a href='admin.php?controller=admin_pro&action=dev_group&level=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['level']; ?>
'><?php if ($this->_tpl_vars['alldev'][$this->_sections['t']['index']]['level'] == 1): ?>一级目录<?php elseif ($this->_tpl_vars['alldev'][$this->_sections['t']['index']]['level'] == 2): ?>二级目录<?php else: ?>服务器组<?php endif; ?></a></td>
				<td><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['count']; ?>
</td>
				<td><?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['description']; ?>
</td>
				<td>
				<?php if ($_SESSION['ADMIN_LEVEL'] == 1): ?>				<img src='<?php echo $this->_tpl_vars['template_root']; ?>
/images/edit_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=devgroup_edit&id=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['id']; ?>
" >编辑</a> | 
				<img src='<?php echo $this->_tpl_vars['template_root']; ?>
/images/delete_ico.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="#" onClick="if(!confirm('您确定要删除？')) {return false;} else { location.href='admin.php?controller=admin_pro&action=dev_group_del&id=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['id']; ?>
';}">删除</a> <?php if ($this->_tpl_vars['alldev'][$this->_sections['t']['index']]['level'] > 0): ?>| 
				<img src='<?php echo $this->_tpl_vars['template_root']; ?>
/images/file.gif' width=16 height='16' hspace='5' border='0' align='absmiddle'><a href="admin.php?controller=admin_pro&action=dev_group&ldapid=<?php echo $this->_tpl_vars['alldev'][$this->_sections['t']['index']]['id']; ?>
" >查看子目录</a><?php endif; ?>
				<?php endif; ?>
				</td> 
			</tr>
			<?php endfor; endif; ?>
			<tr>
	           <td  colspan="1" align="left">
				<?php if ($_SESSION['ADMIN_LEVEL'] == 1): ?>
				<input size="30" type="button"  value="添加新节点"  onClick="location.href='admin.php?controller=admin_pro&action=devgroup_edit&ldapid=<?php echo $this->_tpl_vars['ldapid']; ?>
'" class="an_06">
				<?php endif; ?>
		   </td>
               
	           <td  colspan="4" align="right">
		   			共<?php echo $this->_tpl_vars['total']; ?>
个记录  <?php echo $this->_tpl_vars['page_list']; ?>
  页次：<?php echo $this->_tpl_vars['curr_page']; ?>
/<?php echo $this->_tpl_vars['total_page']; ?>
页  <?php echo $this->_tpl_vars['items_per_page']; ?>
个记录/页  转到第<input name="pagenum" type="text" class="wbk" size="2" onKeyPress="if(event.keyCode==13) window.location='admin.php?controller=admin_pro&action=dev_group&page='+this.value;">页
		   </td>
		</tr>
		</TBODY>
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

window.parent.menu.document.getElementById('devtree').style.display='none';
window.parent.menu.document.getElementById('ldaptree').style.display='';
</script>
</body>
<iframe name="hide" height="0" frameborder="0" scrolling="no"></iframe>
</html>

