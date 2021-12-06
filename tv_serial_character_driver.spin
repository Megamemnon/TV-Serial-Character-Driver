''***************************************
''*  TV Serial Character Driver         *
''*  Copyright (c) 2021 Brian O'Dell    *
''***************************************

CON
        _clkmode = xtal1 + pll16x   'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

VAR
  byte  c

OBJ
  tvtxt   : "tv_text"
  sercon  : "parallax serial terminal"

PUB start
  tvtxt.start(12)               'pin 12 (1.1K ohm), 13 (560 ohm), 14 (270 ohm)
 ' tvtxt.out(0)                  'clear screen
  tvtxt.str(string("TV Serial Character Driver v0.01"))
  tvtxt.out($0D)                'new line
  sercon.start(9600)    'pin 24 rx; pin 25 tx
  tvtxt.str(string("Serial started at 9600 Baud."))
  tvtxt.out($0D)                'new line

  REPEAT
    tvtxt.out(sercon.CharIn)                'print character to tv_text object

DAT
strVersion  byte  "TV Serial Character Driver v0.01",0
strSerial   byte  "Serial started at 9600 Baud",0
