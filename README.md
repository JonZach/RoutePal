RoutePal 
[![Code Climate](https://codeclimate.com/github/JonZach/RoutePal.png)](https://codeclimate.com/github/JonZach/RoutePal)
=====================


Purpose
-------

This is a Ruby capstone project for the Nashville Software School.

Constraints of the project are that we must use standard library Ruby with the exception of being able to use ActiveRecord as an ORM.  Future exceptions may be added, but the concept with this capstone is to demonstrate mastery of Ruby itself.

The goal of this project is to create a tool for GreenPal vendors to see a list of their daily appointments ordered in the most route efficient way.

Project Status / TODO
---------------------

[![Build Status](https://travis-ci.org/JonZach/RoutePal.png)](https://travis-ci.org/JonZach/RoutePal)
Basic functionality complete

Features
--------
The main feature of RoutePal is to see a listing of your daily appointments in the order in which they should be completed to maximize time and fuel efficiency.

Usage Instructions
------------------
Planned usage is as follows:

To add a new appointment:

    > route add "appointment address"
    > enter specifc date

To view the list of appointments for a particular day:

    > enter specific date
    > route list

To remove a scheduled appointment:

    > enter specific date
    > route remove "appointment address"

To view the list in order of the best route to take:

    > enter specific date
    > route start


Demo
----

To demo the app, you'll have to download it and try it yourself.

Known Bugs
----------
N/A (only because no code is written)

Author
------

Zach Hendrix

Changelog
---------

5/10/2013 - Created initial repository with README and user stories

License
-------
Copyright (c) 2013 Zach Hendrix

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.