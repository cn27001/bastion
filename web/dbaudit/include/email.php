<?php
set_time_limit(120);   
class   smtp_mail   
{   
var   $host;                     //����   
var   $port;                     //�˿�   һ��Ϊ25   
var   $user;                     //SMTP��֤���ʺ�   
var   $pass;                     //��֤����   
var   $debug   =   false;       //�Ƿ���ʾ�ͷ������Ự��Ϣ��   
var   $conn;   
var   $result_str;             //���   
var   $in;                     //�ͻ������͵�����   
var   $from;                     //Դ����   
var   $to;                     //Ŀ������   
var   $subject;                   //����   
var   $body;                     //����   
function   smtp_mail($host,$port,$user,$pass,$debug=false)   
{   
$this->host       =   $host;   
$this->port       =   $port;   
$this->user       =   base64_encode($user);   
$this->pass       =   base64_encode($pass);   
$this->debug     =   $debug;   
$this->socket   =   socket_create   (AF_INET,   SOCK_STREAM,   SOL_TCP);     //�����÷���ο��ֲ�   
if($this->socket)   
{   
$this->result_str     =     "����SOCKET:".socket_strerror(socket_last_error());   
$this->debug_show($this->result_str);   
}   
else   
{   
exit("��ʼ��ʧ�ܣ����������������ӺͲ���");   
}   
$this->conn   =   socket_connect($this->socket,$this->host,$this->port);   
if($this->conn)   
{   
$this->result_str     =     "����SOCKET����:".socket_strerror(socket_last_error());   
$this->debug_show($this->result_str);   
}   
else   
{   
exit("��ʼ��ʧ�ܣ����������������ӺͲ���");   
}   
$this->result_str   =   "������Ӧ��<font   color=#cc0000>".socket_read   ($this->socket,   1024)."</font>";   
$this->debug_show($this->result_str);   


}   
	function   debug_show($str)   
	{   
		if($this->debug)   
		{   
			echo   $str."<p>\r\n";   
		}   
	}   
	function   send($from,$to,$subject,$body)   
	{   
		if($from   ==   ""   ||   $to   ==   "")   
		{   
		exit("�����������ַ");   
		}   
		if($subject   ==   "")   $sebject   =   "�ޱ���";   
		if($body         ==   "")   $body         =   "������";   
		$this->from           =     $from;   
		$this->to               =     $to;   
		$this->subject     =     $subject;   
		$this->body           =     $body;   

		$All                     =   "From:".$this->from."\n";   
		$All                     .=   "To:".$this->to."\n";   
		$All                     .=   "Subject:".$this->subject."\n";   
		$All                     .=   $this->body;   
		/*   
			�����$All�������ټӴ����Ϳ���ʵ�ַ���MIME�ʼ���   
			��������Ҫ�Ӻܶ����   
		*/   


		//�����Ǻͷ������Ự   
		$this->in               =     "EHLO HELO\r\n";   
		$this->docommand();   

		$this->in               =     "AUTH LOGIN\r\n";   
		$this->docommand();   

		$this->in               =     $this->user."\r\n";   
		$this->docommand();   

		$this->in               =     $this->pass."\r\n";   
		$this->docommand();   

		$this->in               =     "MAIL FROM:<".$this->from.">\r\n";   
		$this->docommand();   

		$this->in               =     "RCPT TO:<".$this->to.">\r\n";   
		$this->docommand();   

		$this->in               =     "DATA\r\n";   
		$this->docommand();   

		$this->in               =     $All."\r\n.\r\n";   
		$this->docommand();   

		$this->in               =     "QUIT\r\n";   
		$this->docommand();   

		//�������ر�����   



	}   

	function   docommand()   
	{   
		socket_write   ($this->socket,   $this->in,   strlen   ($this->in));   
		$this->debug_show("�ͻ������".$this->in);   
		$this->result_str   =   "������Ӧ��<font   color=#cc0000>".socket_read   ($this->socket,   1024)."</font>";   
		$this->debug_show($this->result_str);   
	}   
}   
//����������Ĳ��ԣ����õ���smtp.163.com�����������Ҳ������163.com�ģ�Ҫ���˼Ҳ����㷢����   
//����������ʱ�����޸ĳ����Լ�������Ϳ�����   

?>