User Stories for RoutePal
=========================

<hr />

As a GreenPal vendor<br />
In order to make sure I reduce overhead and maximize my time<br />
I want to know the most efficient driving route to take to complete my daily appointments.

    - User runs `route start`
    - User enters date to see list of appointments for a specific day
    - User sees appointments sorted in order of the most efficient route

<hr />

As a GreenPal vendor<br />
In order to keep track of my daily appointments<br />
I want to add appointments to specific days

    - User runs `route add <appointment address>`
    - User enters `specific date (mm-dd-yyyy)`
    - Appointment is added to list for that date

<hr />

As a GreenPal vendor<br />
In order to keep track of my daily appointments<br />
I want to remove appointments from specific days

    - User runs `route remove <appointment address>`
    - User enters `specific date (mm-dd-yyyy)`
    - Appointment is removed from list for that date

<hr />

As a GreenPal vendor<br />
In order to keep track of my daily appointments<br />
I want to see a list of my scheduled appointments

    - User runs `route list <mm-dd-yyyy>`
    - Apppointments are listed, not route optimized

<hr />
