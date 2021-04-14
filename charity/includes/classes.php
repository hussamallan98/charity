<?php 

require('dbclass.php');


class charity extends dbconnection{
	public $charity_id;
	public $charity_name;
	public $charity_email;
	public $charity_password;
	public $charity_phone;
	public $err;

	
 public function login($email,$pass)
    {
    	$query="SELECT * from charity
                where charity_email='$email' AND charity_password='$pass' ";
                $result=$this->performQuery($query);
                return $this->fetchAll($result);
    }

     
	public function create(){




		$query = "INSERT INTO charity(charity_name,charity_email,charity_password,charity_phone)
				 VALUES('$this->charity_name','$this->charity_email','$this->charity_password',
				 		'$this->charity_phone')";
		$this->performQuery($query);

		
	}

}

class supporter extends dbconnection{
	public $supporter_id;
	public $supporter_name;
	public $supporter_email;
	public $supporter_password;
	public $supporter_phone;
	public $err;

	
 public function login($email,$pass)
    {
    	$query="SELECT * from supporter
                where supporter_email='$email' AND supporter_password='$pass' ";
                $result=$this->performQuery($query);
                return $this->fetchAll($result);
    }

     
	public function create(){




		$query = "INSERT INTO supporter(supporter_name,supporter_email,supporter_password,supporter_phone)
				 VALUES('$this->supporter_name','$this->supporter_email',
				 		'$this->supporter_password','$this->supporter_phone')";
		$this->performQuery($query);

		
	}

}


class admin extends dbconnection
{
	public $admin_id;
	public $admin_email;
	public $admin_password;

	
	public function login($email,$pass)
    {
    	$query="SELECT * from admin
                where admin_email='$email' AND admin_password='$pass' ";
                $result=$this->performQuery($query);
                return $this->fetchAll($result);
    }

}
?>
