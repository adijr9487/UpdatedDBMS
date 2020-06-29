const express = require('express');
const bodyParser = require('body-parser');
const ejs = require('ejs');
const mysql = require('mysql');
const sessions = require('client-sessions');
const session = require('express-session');
const d = new Date();
const time = 'Posted at '+ d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()+' on '+d.getDate()+'-'+d.getMonth()+'-'+d.getFullYear(); 


// enabling express
const app = express();

// connecting to database
const connection = mysql.createConnection({
    host: 'sql12.freemysqlhosting.net',
    user: 'sql12342129',
    password: 'hr9qFE37Hv',
    database: 'sql12342129',
});

connection.connect((err)=>{
    if(!err)
    {
        console.log('Database Connected');
    }else{
        console.log(err);
    }
})

// setting up engine, public folder and parser

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static('public'));
app.use(session({
    cookieName: 'session',
    secret: 'thisissecret',
    duration: 60*60*100, //60min
}));

//variables

//queries
const Joining = `SELECT * FROM (('coust_comp' INNER JOIN complain_table ON coust_comp.complain_id = complain_table.id)
    INNER JOIN coustomer_table ON coust_comp.coustomer_id = coustomer_table.id;`

const post_query = "INSERT INTO coustomer_table SET ?";
const complain_post_query = "INSERT INTO complain_table SET ?";
const comp_coust_post_query = 'INSERT INTO coust_comp SET ?';
const comp_branch_post_query = 'INSERT INTO comp_bran SET ?';
const admin_query_join = "((man_bra INNER JOIN managers_table ON managers_table.id= manager_id) INNER JOIN branch_table ON branch_table.id = branch_id)";

//get routers
app.get('/', (req, res)=>{
    if(req.session.items){
    res.render('userdashboard', {data: req.session.items})
    }
    else{
        res.render('index');
    }
    // console.log(req.session.items)
});
app.get('/userslogin',(req, res)=>{
    if(req.session.items){
    res.render('userdashboard', {data: req.session.items})
    }
    else{
        res.render('userslogin', {"state": ""})
    }
    console.log(req.session.items)
})
app.get('/userregistration', (req, res)=>{
    if(req.session.items){
    res.render('userdashboard', {data: req.session.items})
    }
    else{
        res.render('userregistration', {"state": ""})
    }
    console.log(req.session.items)
    
    
})
app.get('/userdashboard', (req, res)=>{
    if(req.session.items){
    res.render('userdashboard', {data: req.session.items})
    }
    else{
        res.redirect('/userslogin');
    }
    console.log(req.session.items)

});
app.get('/userprofile', (req, res)=>{
    if(req.session.items){
        res.render('userprofile', {data: req.session.items})
        }
        else{
            res.redirect('/userslogin');
        }
        console.log(req.session.items)
    
    
})
app.get('/complainthistory', (req, res)=>{
    if(req.session.items){
        // console.log(req.session)
        connection.query(`SELECT * FROM coust_comp INNER JOIN complain_table ON complain_id = complain_table.id WHERE customer_id=${req.session.items[0].id}`, (err, complains)=>{
            if(err) throw err;
                // console.log(complains);
            if(complains.length)
                res.render('complainthistory', {data: req.session.items, complains: complains})
            else{
                res.render('complainthistory', {data: req.session.items, complains: []})
            }
        });
    }
    else{
        res.redirect('/userslogin');
    }
    // console.log(req.session.items)

})
app.get('/admindashboard', (req, res)=>{
    // res.render('admindashboard');
    if(req.session.manager_id)
    {
        connection.query(`SELECT branch_id FROM man_bra WHERE manager_id='${req.session.manager_id}'`, (err, branch_id)=>{
            if(err) throw err;
            // console.log(branch_id);
            connection.query(`SELECT * FROM comp_bran INNER JOIN complain_table ON complain_id = complain_table.id WHERE branch_id=${branch_id[0].branch_id}`, (err, complain_array)=>{
                // console.log(complain_array);
                if(err) throw err;
                res.render("admindashboard", {data: req.session.data, complains:complain_array});
            });
        })
    }else{
        res.redirect('/admin')
    }

})
app.get('/admin', (req, res)=>{
    if(req.session.manager_id)
    {
        res.redirect("/admindashboard");
    }else{
        res.render('admin', {state: ""});
    }
})
app.get("/logout", (req, res)=>{
    console.log("Logout request")
    req.session.destroy((err)=>{
        if(err)
            res.negotiate(err)
        res.redirect('/')
    })
})
// post routers

app.post('/userslogin', (req, res)=>{
    // console.log(req.body)
    const phone = req.body.phonenumber;
    const password = req.body.pass;
    connection.query(`SELECT * FROM coustomer_table WHERE phone='${phone}'`, (err, found_item)=>{
        if(!found_item.length)
        {
            console.log('invalid phno.')
            res.render('userslogin', {"state": "Invalid Phone Number or you might have'nt registered yet"})
            
        }
        else{
            // console.log(found_item);
            if(found_item[0].password == password)
            {
                req.session.id = found_item[0].id;
                req.session.items = found_item;
                res.redirect('/userdashboard')
            }
            else{
                res.render('userslogin', {"state": "Wrong Password"})
            }
        }
    })
})

app.post('/userregistration', (req, res)=>{
    console.log(req.body)
    let post = {
        first_name : req.body.firstname,
        last_name: req.body.lastname,
        phone: req.body.phonenumber,
        email: req.body.email,
        password: req.body.pass,
    };
    connection.query(`SELECT * FROM coustomer_table WHERE email='${req.body.email}'`, (err, found_email)=>{
        // console.log(found_email)
        if(found_email.length)
        {
            connection.query(`SELECT * FROM coustomer_table WHERE phone='${req.body.phonenumber}'`, (err, found_phone)=>{
                if(found_phone.length){
                    res.render('userregistration', {'state': 'Email and Phone is already in use'});
                }
                else{
                    res.render('userregistration', {'state': 'Email is already in use'});
                }
            });             
        }
        else{
            connection.query(`SELECT * FROM coustomer_table WHERE phone='${req.body.phonenumber}'`, (err, found_phone)=>{
                if(found_phone.length){
                    res.render('userregistration', {'state': 'Phone is already in use'});
                }
                else{
                    connection.query(post_query, post, (err, result) =>{
                        console.log(result);
                        if(err) throw err;
                    });
                    console.log('Data Successfully Submited');
                    res.redirect('/userslogin'); 
                }
            });
        }
    });
});

app.post('/admin', (req, res)=>{
    console.log(req.body)
    
    connection.query('SELECT branch_name, branch_code,manager_id, password FROM ((man_bra INNER JOIN managers_table ON managers_table.id=manager_id) INNER JOIN branch_table ON branch_table.id = branch_id)', (err, result)=>{
        // console.log(result)
        connection.query(`SELECT branch_name, branch_code,manager_id, password FROM `+admin_query_join+` WHERE branch_name='${req.body.branchname}'`, (err, found_item)=>{
            if(found_item.length)
            {
                // console.log(found_item)
                if(found_item[0].branch_code == req.body.branchcode)
                {
                    if(found_item[0].password == req.body.password)
                    {
                        connection.query(`SELECT * FROM managers_table WHERE id = '${found_item[0].manager_id}'`, (err, manager_item)=>{
                            if(err) throw err;
                            // console.log(manager_item);
                            req.session.brach_name = found_item[0].branch_name;
                            req.session.brach_code = found_item[0].brach_code;
                            req.session.manager_id = found_item[0].manager_id;
                            req.session.data = manager_item;
                            console.log('LogIn successfull');
                            res.redirect('/admindashboard');
                        });
                    }
                    else{
                        res.render('admin', {state: 'Wrong Password'});
                    }
                }
                else{
                    res.render('admin', {state: 'Wrong Branch Code'});
                    console.log('wrong code')
                }
            }
            else{
                res.render('admin', {state: 'Wrong Branch name'});
                console.log('wrong name')
            }
        })
        // if(req.body.branchname === result.branch_name)
        // {
        //     // console.log(req.body.branchname === result.branch_name);
        //     if(req.body.branchcode === result.branch_code)
        //     {
        //         if( req.body.pass === result.password)
        //         {
        //             req.session.brach_name = result.branch_name;
        //             req.session.brach_code = result.brach_code;
        //             req.session.manager_id = result.manager_id;

        //             console.log('LogIn successfull');
        //             res.redirect('/admindashboard');
        //         }else{
        //             console.log('wrongPassword')
        //         }

        //     }else{
        //         console.log('wrong brach code')
        //     }

        // }else{
        //     console.log('wrong brach name')
        // }
        if (err) throw(err);
    })/*connection.query closed*/

})
app.post('/userdashboard', (req, res)=>{
    // console.log(req.body)
    const d = new Date();
    const time = 'Posted at '+ d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()+' on '+d.getDate()+'-'+d.getMonth()+'-'+d.getFullYear();
    let postMain = {
        vic_name : req.body.victimname,
        date : req.body.dateofcrime,
        time : req.body.timeofcrime,
        city : req.body.city,
        address : req.body.address,
        type : req.body.type,
        phone : req.body.contact,
        description : req.body.description,
        post_time : time,
    };
    // console.log(post);
    connection.query(complain_post_query, postMain, function(err, rows){
        if(err)
            console.log(err);
        else{
            // console.log(rows)
            // console.log(rows.insertId);
            let post = {
                customer_id : req.session.items[0].id,
                complain_id :rows.insertId,
            }
            // creating coust_comp table
            connection.query(comp_coust_post_query, post, (err, relares)=>{
                if(err) throw err;
                else{
                    // console.log(relares);
                }
            });
            // creating comp_brach table
            // console.log(postMain.city)
            connection.query(`SELECT id FROM branch_table WHERE branch_city='${postMain.city}'`, (err, found_br_id)=>{
                console.log(found_br_id)
                // connection.query()
                
                if(err) throw err;
                post = {
                    complain_id : rows.insertId,
                    branch_id : found_br_id[0].id,
                }
                // console.log(post)
                connection.query(comp_branch_post_query, post, (err, comp_bran_item)=>{
                    if(err) throw err;
                    // console.log(comp_bran_item);
                })  
            });
            
            res.redirect('/complainthistory');
        }
    });


    // 
})
app.post('/complainthistory', (req, res)=>{
    console.log(req.body)
    // 
})
app.post('/userprofile', (req, res)=>{
    console.log(req.body)
    
})
app.post('/admindashboard', (req, res)=>{
    console.log(req.body)
    
})
app.post("/logout", (req, res)=>{   
    console.log('Hwllo') 
    res.redirect('/logout')
})

// app.get('/register', (req, res)=>{
//     res.render('register');
//     connection.query('SELECT * FROM sampleTable', (err, items)=>{
//         if(err)
//         {
//             console.log(err)
//             connection.query('CREATE TABLE sampleTable (id INT(2) AUTO_INCREMENT PRIMARY KEY,email VARCHAR(50),name VARCHAR(30) NOT NULL,password VARCHAR(30) NOT NULL,phone VARCHAR(10),)', (err, result)=>{
//                 if(err) throw err;
//                 else{
//                     console.log('no err')
//                 }
                
//             });
//         }else
//         {
//             // console.log(err)
//             console.log('No err')
//         }
//     });
// })

// //reciever
// app.post('/login', (req, res)=>{
//     var email = req.body.email;
//     var password = req.body.password;
//     connection.query(`SELECT * FROM sampleTable WHERE email='${email}'`, (err, item, it)=>{
//         if(err) {
//             console.log('Invalid Email');
//             console.log(err);
//         }
//         else{
//             console.log(it);
//             console.log(item);

//         }   
//     });
// })

// app.post('/register', (req, res)=>{
    
// })

app.listen(process.env.PORT || 3000, ()=>{
    console.log('Server is running on PORT 3000');
});

