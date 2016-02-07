## Synopsis

This is testing the creation of a Consul cluster on Windows 2012 R2 using Vagrant with VirtualBox as the provider.


## Motivation

Trying to learn how Consul works for service registration, discovery, and monitoring.

## Installation
<ol>
  <li>Install VirtualBox on your workstation.</li>
  <li>Install Vagrant on your workstation.</li>
  <li>Clone the repo and change the box nam in the Vagrantfile to a Windows 2012 R2 box that works for you.</li>
</ol>

## To Do
<ul>
  <li>Write InSpec tests</li>
  <li>Write a PowerShell script to configure Consul agent</li>
  <li>Write a JSON file for Consul configuration</li>
</ul>

## Tests

InSpec tests still to be written

## License

The MIT License (MIT)

Copyright (c) 2016 Brian Bohanon

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
