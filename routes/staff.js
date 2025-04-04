const express = require('express');
//const { body } = require('express-validator');
const dbConnection = require('../config/connection');
const Joi = require('@hapi/joi');
const { result } = require('@hapi/joi/lib/base');
const { body } = require('express-validator');


module.exports = app => {
  const connection = dbConnection();
  //app.use(expressValidator());
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ////CREATE A REQUEST

  app.post("/staff/createRequest", (req, res) => {
    let ref_number = Date.now();
    let data = {
      id: ref_number,
      description: req.body.description,
      req_date: new Date().toISOString().slice(0, 10),
      category: req.body.category,
      venue: req.body.venue,
      image: req.body.image,
      progress: 'pending',
      status: 'active',
      staff_id: req.body.staff_id
    };
    console.log(data);
    const sql = `INSERT INTO work_request SET ?`;
    connection.query(sql, data, (err, result) => {
      if (err) {
        res.send({
          message: 'Something went wrong...',
          success: "false"
        })
        console.log(err)
      }
      else {
        res.send({
          message: `Work request submitted, your reference number :${ref_number}`,
          success: true
        });
      }
    });
  });
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///VIEW PROGRESS OF REQUEST///
  app.get('/staff/checkStatus', (req, res) => {
    let ref_number = req.body.ref_number;///staff inputs the the reference number of request
    const sql = `SELECT id,progress FROM work_request WHERE id= "${ref_number}"`;
    connection.query(sql, (err, result) => {
      if (err) {
        res.send({ message: 'An error occured', success: false });
      } else {
        res.send({ result, success: true });
      }
    });
  });
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /**                                                      VIEW MY REQUESTS                                                                  */
  app.get('/staff/loggedRequests/:staff_id/', (req, res) => {
    const sql = `SELECT id,description,category,DATE_FORMAT(req_date, "%Y/%b/%d %H:%i") req_date,venue,progress,status, t.name, t.surname
    FROM work_request w, technician t
    WHERE t.tech_id = w.tech_id
    and w.staff_id ="${req.params.staff_id}"
            AND status='active'
            ORDER BY req_date`
    connection.query(sql, (err, result) => {
      if (err) {
        res.send({ message: 'An error occured', success: false });
      } else {
        res.send({ result, success: true });
      }
    }) 
  })
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///STAFF SENDING FEEDBACK///
  app.put("/staff/sendFeedback/:id", (req, res) => {
    let staff_feedback = req.body.staff_feedback;
    const sql = `UPDATE work_request
            SET staff_feedback=?
               WHERE id=?`;///reference-number
    connection.query(sql, [staff_feedback, req.params.id], (err, result) => {
      if (err) {
        res.send({ mesaage: 'Could not process feedback' });
      } else {
        res.send({ mesaage: 'Feedback submitted', result, success: true });
      }
    });
  });
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /*                                                       AUTHENTICATE STAFF NUMBER                                                                              */


  app.post('/staff/authenticateStaffNumber', (req, res) => {
    let staff_id = req.body.staff_id;
    console.log(staff_id);
    const sql = `SELECT * FROM staff
             WHERE staff_id=${staff_id}`;
    connection.query(sql, (err, result) => {
      if (result.length > 0) {
        res.send({
          message: `Aunthentication completed for ${result[0].staff_name} ${result[0].staff_surname}!`,
          staff_id,
          success: true

        })
        console.log(`staff :${result[0].staff_name} ${result[0].staff_surname} logged in`)
      }
      else {
        res.send({
          message: "Entered staff number not found!",
          success: false
        });
      }
    });
  });




  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /**                                                DUPLICATE HANDLING */
  app.post('/staff/getDuplicates', (req, res) => {
    let category = req.body.category;
    let venue = req.body.venue;
    const sql = `SELECT category,venue
            FROM work_request
            WHERE EXISTS
            (SELECT *
            FROM work_request
            WHERE category LIKE '%${category}%'
           AND venue LIKE '%${venue}%'); `
    connection.query(sql, (err, result) => {
      if (err) {
        res.send({ message: `an error occured!` });
      } if (result.length > 0) {
        res.send(result);
      }
    });
  });
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /**                                               CATEGORY DROP DOWN OPTIONS */
  app.get('/getCategory', (req, res) => {
    const sql = `SELECT id,division_name FROM division`
    connection.query(sql, (err, result) => {
      if (err) {
        res.send({ message: 'Something with went wrong with server' });
      } else {
        res.send(result);
      }
    });
  });
  /**                                               ITEMS (description) DROP DOWN OPTIONS */
  app.get('/getItem/:id', (req, res) => {
    const sql = `SELECT item_name
              FROM item
              WHERE division_id=${req.params.id}`
    connection.query(sql, (err, result) => {
      if (err) {
        res.send({ message: 'Something with went wrong with server' });
      } else {
        res.send(result);
      }
    });
  });

};
