Thumper
=======

Thumper is a secure time stamp client/server system that implements RFC-3161. It allows clients
to obtain cryptographic time stamps that can be used to later verify that certain documents
existed on or before the time mentioned in the time stamp. Thumper is written in a combination
of Ada 2012 and SPARK 2014 and makes use of an external C library. Thumper is used as a SPARK
technology demonstration.

The system is intended to satisfy two major goals.

1. To serve as an educational vehicle for secure, high integrity programming, along with related
   topics.

2. To allow students to obtain strong time stamps of their work that can be used to prove it was
   completed on time.

Note that Thumper requires a supporting project providing ASN.1 support named Hermes. That
project can be obtained separately from GitHub at the URL of

    https://github.com/pchapin/hermes

To build Thumper the Hermes repository should be cloned as a sibling of this repository.
Thumper's build control files assume this layout. See the documentation in the doc folder for
more information.

Quick Start
-----------

Thumper was developed on Windows and is designed to work on Windows. It should be possible,
however, to compile Thumper on Linux or MacOS, but that is an unsupported configuration and will
likely require some adjustments to various files.

Start by cloning the Hermes library into a sibling folder as described above. To build Thumper
(and Hermes) you'll need the following software installed:

+ GNAT GPL 2015

+ SPARK GPL 2015. Although not strictly necessary, you will need the SPARK tools if you wish to
  check (or enhance) the proofs of freedom from runtime error.

+ OpenSSL for Win32. Here we mean the precompiled version of OpenSSL for Windows. Note that you
  must use the 32 bit version to match the 32 bit code generation of GNAT GPL 2015.

+ PostgreSQL 9.4. The exact version is not necessarily critical but if you use a different
  version, or if you install it in a non-standard location, you'll need to modify the
  `thumper.gpr` project file to specify an appropriate path to PostgreSQL's `lib` folder. You
  should also be sure the PostgreSQL `bin` folder is in your PATH. Note that you should install
  the 32 bit version of PostgreSQL to match the 32 bit code generation of GNAT GPL 2015.

After setting up the software above, you should be able to load the `thumper.gpr` project file
into GPS and build both the Thumper client and server. Note that the Hermes library will be
automatically built when Thumper is built.

See the documentation in the `doc` folder for more information.

Peter C. Chapin  
PChapin@vtc.vsc.edu
