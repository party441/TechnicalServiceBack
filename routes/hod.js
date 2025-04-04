dbconnection = require('../config/connection');


module.exports = app => {
  const connection = dbconnection();
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /*                                          VIEW DEPARTMENT REQUESTS*/
  app.get('/hod/getDept-Requests/:hod_id', (req, res) => {
    const sql = `SELECT   s.staff_name,
                          s.staff_surname,
                          w.req_date,
                          w.category,
                          w.status,
                          w.progress
                 FROM work_request w,staff s,department d,hod h
                 WHERE w.staff_id=s.staff_id
                 AND s.department_id = d.department_id
                 AND d.department_id = h.department_id
                 AND h.hod_id =${req.params.hod_id}`;
    connection.query(sql, (err, result) => {
      if (err) {
        res.send({ message: `Process failed....` })
      } if (result.length > 0) {
        res.send(result)
      }
    });
  })

  /*||||||||||  track progress DB Script||||||||||*/

  module.exports = app => {
    const connection = dbconnection();

    app.get('/hod/getDept-trackProgress/:hod_id', (req, res) => {
      const sql = `SELECT s.staff_name,
                              w.description,
                              w.venue,
                              w.category,
                              w.req_date,
                              w.priority
                     FROM work_request w,staff s,hod h
                     WHERE w.staff_id=s.staff_id
                     AND s.department_id = h.department_id
                AND h.hod_id =${req.params.hod_id}`;
      connection.query(sql, (err, result) => {
        if (err) {
          res.send({ message: `Process failed....` })
        } if (result.length > 0) {
          res.send(result)
        }
      });

    });
  };
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // *                                              HOD LOGIN                                                                 */
  app.post('/hod/login', (req, res) => {
    let hod_id = req.body.hod_id;
    let password = req.body.password;
    const sql = `SELECT * 
            FROM hod 
            WHERE hod_id="${hod_id}"`;
    connection.query(sql, (err, result) => {
      if (result.length > 0) {
        if (result[0].password == password) {
          res.send({
            message: `Hello ${result[0].name} ${result[0].surname}, You've Successfully logged in!`,
            success: true
          });
          console.log(result)
        }
        else {
          res.send({
            message: "Incorrect password!",
            success: false
          });

        }
      } else {
        res.send({
          message: "Please enter correct ID",
          success: false
        });
      }

    });
  });

};