<script type="text/javascript">
   <!--
      // Form validation code will come here.
      function validate()
      {
      
         if( document.myForm.ename.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.ename.focus() ;
            return false;
         }

         if( document.myForm.surname.value == "" )
         {
            alert( "Please provide your surname!" );
            document.myForm.surname.focus() ;
            return false;
         }

         if( document.myForm.age.value == "" ||
         isNaN( document.myForm.age.value ) ||
         document.myForm.age.value.length != 2 )
         {
            alert( "Please provide a Age in the format ##." );
            document.myForm.age.focus() ;
            return false;
         }
         
         if( document.myForm.email.value == "" )
         {
            alert( "Please provide your email!" );
            document.myForm.email.focus() ;
            return false;
         }
         
         if( document.myForm.mobile.value == "" ||
         isNaN( document.myForm.mobile.value ) ||
         document.myForm.mobile.value.length != 10 )
         {
            alert( "Please provide a Mobile number in the format ##########." );
            document.myForm.mobile.focus() ;
            return false;
         }
         
      }
   //-->
</script>