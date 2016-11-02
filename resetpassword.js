<button type="button" name="Submit" value="Save" class="btn btn-danger" onclick="Function();"><i class="livicon" data-n="pen" data-s="16" data-c="#fff" data-hc="0" "></i> Save</button>

<script>
    function Function() {
        var oldpasswprd = document.getElementById('oldPassword').value;
        var newpassword = document.getElementById('newPassword').value;
        var confirmpassword = document.getElementById('confirmPassword').value;
        if (oldPassword == "" || newpassword == "" || confirmpassword == "") {
            alert('Please fill all the details');
        }
        else if (oldpasswprd == newpassword) {
            alert("Old password and New Password cannot be same");
        }
        else if (newpassword != confirmpassword) {
            alert("password mismatch");
        }
    }

</script>


=====



function checkForm()
   {
    var oldP=document.getElementById("oldP").value;
    var newP=document.getElementById("newP").value;
    var confirmP =document.getElementById("confirmP").value;

    if(oldP!=""&&newP!=""&&confirmP!="")
    {
      if(oldP!=newP)
      {
        if(newP==confirmP)
         {
          return true;
         }
         else
          {
            alert("Confirm password is not same as you new password.");
            return false;
          }
      }
      else
     {
      alert(" This Is Your Old Password,Please Provide A New Password");
      return false;
     }
    }
    else
    {
     alert("All Fields Are Required");
     return false;
    }
}
An in thml you need to add

<form onsubmit="return checkForm();" ----- >
For reset you can create a function somting like this

function resetForm()
{
        var oldP=document.getElementById("oldP").value="";
        var newP=document.getElementById("newP").value="";
        var confirmP =document.getElementById("confirmP").value="";
}

===========
    Disabling text
                 
             <button onclick="myFunction()">Disable Text field</button>

             <script>
                function myFunction() {
                    document.getElementById("myText").disabled = true;
                }
            </script>
             
             
             
             =====
                 
                 
<script>
         --  $(document).ready(function() {
         --    $("#datepicker").datepicker();
         --  }); 
      </script>