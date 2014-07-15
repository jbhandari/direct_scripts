##README

DirectScripts is an e-prescription application designed for 3 types of users: Physicians, Pharmacists, and Patients.

Features:

  -Autocompletion features for medication names of currently approved FDA medications

  -All prescriptions are created as QRcodes (Using the RQRcode Gem)
    -currently implementing: Qr code will be sent to patient via email (User
Mailer) and eventually phone (Twilio api)
  -Every Prescription has a unique url

  -Patient's can be searched by name or unique patient id

  -This application was styled with the Bourbon family

![](http://jatin.io/public/DirectScripts.jpg)
