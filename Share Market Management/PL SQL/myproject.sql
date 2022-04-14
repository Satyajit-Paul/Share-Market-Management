Set ServerOutput On;


Drop Table Shares;
Drop Table Customer;
Drop Table Branch;
Drop Table Company;
Drop Table admin;
Drop Table Admin;
Drop Table Customer_Deleted;


--CREATE Or Replace SEQUENCE Cu_Id Start With 1 MinValue 1 Cache 10;


--TABLE CREATION
Create Table Admin
  (
      Admin_ID          Varchar(50) Primary Key,
      Admin_Email       Varchar(50) NOT NULL,
      Admin_Name        Varchar(50) NOT NULL,
      Registered_Number Varchar(100) NOT NULL
  );

Create Table Company
    (
        Company_ID          varchar(25) Primary Key,
        Company_Name        varchar(50) NOT NULL,
        Number_Of_Branch    Number(4) CHECK(Number_Of_Branch > 0)
    );

Create Table Branch
    (
        Branch_ID           varchar(25) Primary Key,
        Branch_Location     varchar(25) NOT NULL,
        Value_Of_One_Share  Number(10,2) CHECK(Value_Of_One_Share > 0.00),
        Number_Of_Share     Number(6) CHECK(Number_Of_Share > 0),
        Company_ID          varchar(25) NOT NULL 
    );

Create Table Shares
    (
        Share_ID          varchar(25) Primary Key,
        Branch_ID         varchar(25) NOT NULL,
        Customer_ID       Number(10),
        Is_Sold           Number(2) Default 0
    );

Create Table Customer
    (
        Customer_ID         Number(10) Primary Key,
        Customer_Name       varchar(50) NOT NULL,
        Customer_Address    varchar(150) NOT NULL,
        Customer_Email      varchar(50) NOT NULL,
        Customer_Password   varchar(50) NOT NULL,
        Customer_Mobile     varchar(15) NOT NULL      
    );



--RELATION BETWEEN TABLE
ALTER TABLE Branch
ADD CONSTRAINT FK_Company_ID
   FOREIGN KEY (Company_ID)
   REFERENCES Company (Company_ID)
   ON DELETE CASCADE;


ALTER TABLE Shares
ADD CONSTRAINT FK_Branch_ID
   FOREIGN KEY (Branch_ID)
   REFERENCES Branch (Branch_ID)
   ON DELETE CASCADE;

/*
ALTER TABLE Shares
ADD CONSTRAINT FK_Customer_ID
   FOREIGN KEY (Customer_ID)
   REFERENCES Customer (Customer_ID)
   ON DELETE CASCADE;
*/


Insert Into Company (Company_ID, Company_Name, Number_Of_Branch) Values ('Virus1', 'Tutul Group Of Industries', 3);
Insert Into Company (Company_ID, Company_Name, Number_Of_Branch) Values ('Virus2', 'Shake Brothers', 2);
Insert Into Company (Company_ID, Company_Name, Number_Of_Branch) Values ('Virus3', 'Best Electronics', 2);


Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus11', 'Dhaka', 50, 5, 'Virus1');
Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus12', 'Khulna', 65, 7, 'Virus1');
Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus13', 'Cumilla', 45, 3, 'Virus1');
Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus21', 'Jashore', 60, 9, 'Virus2');
Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus22', 'Chitagong', 80, 8, 'Virus2');
Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus31', 'Dhaka', 50, 7, 'Virus3');
Insert Into Branch (Branch_ID, Branch_Location, Value_Of_One_Share, Number_Of_Share, Company_ID) Values ('Virus32', 'Narayangonj', 43, 6, 'Virus3');



Insert Into Shares (Share_ID, Branch_ID) Values ('Virus111', 'Virus11');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus112', 'Virus11');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus113', 'Virus11');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus114', 'Virus11');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus115', 'Virus11');

Insert Into Shares (Share_ID, Branch_ID) Values ('Virus121', 'Virus12');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus122', 'Virus12');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus123', 'Virus12');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus124', 'Virus12');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus125', 'Virus12');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus126', 'Virus12');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus127', 'Virus12');

Insert Into Shares (Share_ID, Branch_ID) Values ('Virus131', 'Virus13');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus132', 'Virus13');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus133', 'Virus13');

Insert Into Shares (Share_ID, Branch_ID) Values ('Virus211', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus212', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus213', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus214', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus215', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus216', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus217', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus218', 'Virus21');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus219', 'Virus21');

Insert Into Shares (Share_ID, Branch_ID) Values ('Virus221', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus222', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus223', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus224', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus225', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus226', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus227', 'Virus22');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus228', 'Virus22');

Insert Into Shares (Share_ID, Branch_ID) Values ('Virus311', 'Virus31');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus312', 'Virus31');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus313', 'Virus31');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus314', 'Virus31');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus315', 'Virus31');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus316', 'Virus31');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus317', 'Virus31');

Insert Into Shares (Share_ID, Branch_ID) Values ('Virus321', 'Virus32');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus322', 'Virus32');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus323', 'Virus32');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus324', 'Virus32');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus325', 'Virus32');
Insert Into Shares (Share_ID, Branch_ID) Values ('Virus326', 'Virus32');



Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Jhon Abraham', 'Eastern Road, Mohakhali, Dhaka', 'jhon@gmail.com', '123456', '01400056728');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Mery Nick', 'Ma Bari Street, Nirala, Khulna', 'mery@gmail.com', '123456', '01300059728');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Kausar Ahmed', 'Ronhat, Rajshahi', 'kausar@gmail.com', '123456', '01745252229');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Mehedi Shuvo', 'Khoksha, Kushtia', 'shuvo@gmail.com', '123456', '01521895721');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Tahmid Rehman', 'Khoksha, Kushtia', 'tahmid@gmail.com', '123456', '01725785419');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Kazi Zia', 'Uttara, Dhaka', 'zia@gmail.com', '123456', '01679561329');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Delowar Shikder', 'Jhalokathi, Borisal', 'delowar@gmail.com', '123456', '01743901472');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Atik Shahriar', 'Dhanmondi, Dhaka', 'atik@gmail.com', '123456', '01804875091');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Mehedi Hasan', 'Sharsha, Jashore', 'mehedi@gmail.com', '123456', '01521413160');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Ovishake sen', 'Thakurgaon, Dinajpur', 'ovishake@gmail.com', '123456', '01521417801');
Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, 'Shafin Junayed', 'Kalyanpur, Dhaka', 'shafin@gmail.com', '123456', '01521101537');

Create Table Customer_Deleted
  (
    ID         Number(10)  Primary Key,
    Name       varchar(50),
    Address    varchar(150),
    Email      varchar(50),
    Mobile     varchar(15),
    Deleted_Date Date  
  );


CREATE OR REPLACE TRIGGER BACKUP_DELETED_Customer
BEFORE DELETE
ON Customer
FOR EACH ROW

DECLARE
  Got_ID         Number(10);
  Got_Name       varchar(50);
  Got_Address    varchar(150);
  Got_Email      varchar(50);
  Got_Mobile     varchar(15);
  Temp       Date;

  BEGIN
    Got_ID := :OLD.Customer_ID;
    Got_Name := :OLD.Customer_Name;
    Got_Address := :OLD.Customer_Address;
    Got_Email := :OLD.Customer_Email;
    Got_Mobile := :OLD.Customer_Mobile;
    Temp := SYSDate;
    INSERT INTO Customer_Deleted VALUES (Got_ID, Got_Name, Got_Address, Got_Email, Got_Mobile, Temp);

  END ;
/



Insert Into Admin (Admin_ID, Admin_Name, Admin_Email, Registered_Number) Values ('Admin_001', 'Mark Henry', 'admin1@gmail.com', 'BXB3908HRED');


Begin

  DBMS_OUTPUT.PUT_LINE('Press 1 for Admin Log In.');
  DBMS_OUTPUT.PUT_LINE('Press 2 for Customer Registration.');
  DBMS_OUTPUT.PUT_LINE('Press 3 for Customer Log In.');

  End;
/



Create Or Replace Procedure Customer_Deletion Is

  id Customer.Customer_ID%TYPE;

  Begin
    Select * From Customer;
    id := &Customer_ID;
    Delete From Customer Where Customer_ID = id;
  End;
/



Create Or Replace Functon Branch_Calculation (B_Id Branch.Branch_ID%TYPE) Return Branch.Value_Of_One_Share%TYPE Is
  
  p Branch.Value_Of_One_Share%TYPE;
  q Branch.Number_Of_Share%TYPE;

  Begin
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE('Shares in This Branch : ');
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    Select * From Shares Where (Branch_ID = B_Id);

    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE(Chr (10));




    Select Sum(Number_Of_Share) into q From (Select * From Company Natural Join Branch Where (Branch_ID = b_id));
    Select  Value_Of_One_Share into p From (Select * From Company Natural Join Branch Where (Branch_ID = b_id));

    Return p * q;

  End;
/



Create Or Replace Procedure Company_Condition Is

  C_Id    Company.Company_ID%TYPE;
  B_Id    Branch.Branch_ID%TYPE;
  p int;
  x int;
  taka Branch.Value_Of_One_Share%TYPE;

  Begin
    C_Id := '&Company_ID';
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE('Branchs in This Company : ');
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    Select * From Branch Where (Company_ID = c_id)
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    Select Sum(Number_Of_Share) into x From (Select * From Company Natural Join Branch Where (Company_ID = c_id));
    DBMS_OUTPUT.PUT_LINE(Chr (10));
    DBMS_OUTPUT.PUT_LINE('Total Share in this Company : ' || x);

    --Select Sum(Number_Of_Share) into p From (Select * From (Select * From Branch Natural Join Shares) Natural Join Company Where (Company_ID = C_Id));
    DBMS_OUTPUT.PUT_LINE(Chr (10));

    B_Id := '&Brnch_ID';

    taka := Branch_Calculation(B_Id);

  End;
/


Create Or Replace Procedure Log_In_Of_Admins IS
  
  mail varchar(50);
  pass varchar(100);
  Temp int;
  X Admin%ROWTYPE;
  Ch Varchar(2);
  Ch_C Varchar(2);

  Begin

    
    mail := '&Mail';
    pass := '&Registered_Number';

    Select Count (*) Into Temp From Admin Where (Admin_Email = mail AND Registered_Number = pass);
    --DBMS_OUTPUT.PUT_LINE(Temp) ;
    DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
    DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
    --Select Count (*) Into Temp From Admin Where (Admin_Email = 'admin1@gmail.com' AND Registered_Number = 'BXB3908HRED');

    If(Temp = 1) Then
      DBMS_OUTPUT.PUT_LINE('Congratulations !!!') ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      DBMS_OUTPUT.PUT_LINE('Log In Successful !!!') ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      Select * Into X From Admin Where (Admin_Email = mail AND pass = Registered_Number);
      DBMS_OUTPUT.PUT_LINE('User Name : ' || X.Admin_Name) ;
      DBMS_OUTPUT.PUT_LINE('Email : ' || X.Admin_Email) ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      DBMS_OUTPUT.PUT_LINE('Press 1 for Company Details.') ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      DBMS_OUTPUT.PUT_LINE('Press 2 for Customer Details.') ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      Ch = '&Option';
      
      if(Ch = '1') Then
        Select * From Company;
        DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
        DBMS_OUTPUT.PUT_LINE(Chr (10)) ;

        DBMS_OUTPUT.PUT_LINE('Press Y to See the Condition of a Company.') ;

        Ch_C = '&Condition_Company';

        if(Ch_C = 'Y' OR Ch_C = 'y') then
          Company_Condition;
        else
          DBMS_OUTPUT.PUT_LINE('Invalid Choice !!!');
          DBMS_OUTPUT.PUT_LINE(Chr (10));
        End If;

      elsif(Ch_C = '2') then
        DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
        DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
        Select * from Customer;

        DBMS_OUTPUT.PUT_LINE('Press Y to Delete Customer.') ;

        Ch_C = '&Delete_Customer';

        if(Ch_C = 'Y' OR Ch_C = 'y') then
          Customer_Deletion;
        else
          DBMS_OUTPUT.PUT_LINE('Invalid Choice !!!');
          DBMS_OUTPUT.PUT_LINE(Chr (10));
        End If;

      else
        DBMS_OUTPUT.PUT_LINE(Chr (10));
        DBMS_OUTPUT.PUT_LINE('Invalid Choice !!!');
        DBMS_OUTPUT.PUT_LINE(Chr (10));

      End if;
      


      else
      DBMS_OUTPUT.PUT_LINE('Invalid Email or Password !!!') ;

    End if;
    

    

  End;
/


Create Or Replace Procedure Registration_Of_Customers IS
  
  Name Varchar(50);
  Address Varchar(150);
  Email Varchar(50);
  Mobile Varchar(15);
  Password Varchar(50);
  Con_Pass Varchar(50);
  Temp int;
  need Number(10);

  Begin

    Name := '&Name';
    Address := '&Address';
    Email := '&Email';

    Select Count (*) Into Temp From Customer Where (Customer_Email = Email);

    if(Temp = 0) then
      DBMS_OUTPUT.PUT_LINE('Congratulations !!!');
      DBMS_OUTPUT.PUT_LINE(Chr (10));
      DBMS_OUTPUT.PUT_LINE('Your Email Address Is Varified !!!');

    else
      DBMS_OUTPUT.PUT_LINE('Sorry !!!');
      DBMS_OUTPUT.PUT_LINE(Chr (10));
      DBMS_OUTPUT.PUT_LINE('This Email Address is alredy exist in out Database !!!');
      DBMS_OUTPUT.PUT_LINE(Chr (10));
      DBMS_OUTPUT.PUT_LINE('Try With Another mail Address !!!');

    End if;

    Mobile := '&Mobile';
    Password := '&Password';
    Con_Pass := '&Confirm_Password';

    if(Password != Con_Pass) then
      DBMS_OUTPUT.PUT_LINE('Sorry !!! Password Not Mathched !!!');

    End if;

    if(Temp = 0 AND Password = Con_Pass) Then
      --Select Count (*) Into need From Customer;
      Insert Into Customer (Customer_ID, Customer_Name, Customer_Address, Customer_Email, Customer_Password, Customer_Mobile) Values (Cu_Id.nextval, Name, Address, Email, Con_Pass, Mobile);

    End if;

  End;
/



Create Or Replace Procedure Log_In_Of_Customers IS
  
  mail varchar(50);
  password varchar(50);
  Temp int;
  X Customer%ROWTYPE;
  Total_Share int;
  id Shares.Share_ID%TYPE;
  Cos_Id int;

  Begin

    mail := '&Mail';
    password := '&Password';

    Select Count (*) Into Temp From Customer Where (Customer_Email = mail AND Customer_Password = password);

    If(Temp = 1) Then
      DBMS_OUTPUT.PUT_LINE('Congratulations !!!') ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      DBMS_OUTPUT.PUT_LINE('Log In Successful !!!') ;
      DBMS_OUTPUT.PUT_LINE(Chr (10)) ;
      Select * Into X From Customer Where (Customer_Email = mail AND Customer_Password = password);
      DBMS_OUTPUT.PUT_LINE('User Name : ' || X.Customer_Name);
      DBMS_OUTPUT.PUT_LINE('Address : ' || X.Customer_Address);
      DBMS_OUTPUT.PUT_LINE('Email : ' || X.Customer_Email);
      DBMS_OUTPUT.PUT_LINE('Mobile : ' || X.Customer_Mobile);
      Select Count (*) Into Total_Share From Shares Where (Customer_ID = X.Customer_ID);
      DBMS_OUTPUT.PUT_LINE('Total Share : ' || Total_Share);

      DBMS_OUTPUT.PUT_LINE('Available Shares : ');
      DBMS_OUTPUT.PUT_LINE(Chr (10));
      DBMS_OUTPUT.PUT_LINE(Chr (10));
      --Select * From Shares Where Is_Sold = 0;
      for i in (Select * From Shares Where Is_Sold = 0)
      Loop
        DBMS_OUTPUT.PUT_LINE(i.Share_ID||i.Branch_ID||i.Customer_ID||i.Is_Sold);

      End LOOp;

      DBMS_OUTPUT.PUT_LINE('Enter Share ID to sell share : ');
      id := '&Share_Id';

      Update Shares Set Customer_ID = X.Customer_ID Where Share_ID = id;
      Update Shares Set Is_Sold = 1 Where Share_ID = id;



      --Select

      else
      DBMS_OUTPUT.PUT_LINE('Invalid Email or Password !!!') ;

    End if;

  End;
/



Declare
  
  User_Input Varchar(2);

  Begin

      User_Input := '&Option';

      if(User_Input = '1') then
        
        DBMS_OUTPUT.PUT_LINE('Admin Log In !!!');
        EXEC Log_In_Of_Admins;

      elsif(User_Input = '2') then
      
        DBMS_OUTPUT.PUT_LINE('Customer Registration !!!');
        EXEC Registration_Of_Customers;

      elsif(User_Input = '3') then
        
        DBMS_OUTPUT.PUT_LINE('Customer Log In !!!');
        EXEC Log_In_Of_Customers;

      else
      
        DBMS_OUTPUT.PUT_LINE('Invalid Selection !!!');

      end if;

  End;
/














