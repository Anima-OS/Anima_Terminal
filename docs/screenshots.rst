Screenshots
*********************************************************************************
.. contents::


.. _metro_shot:

metro.sh
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-metro.jpg
   :align: center
   :width: 90%
   :figwidth: 100%

Output of the
`metro.sh <https://github.com/mitotic/graphterm/blob/master/graphterm/bin/metro.sh>`_
command, which embeds six smaller terminals within the main terminal, running
six different commands from the GraphTerm toolchain: (i) live twitter stream output using
``gtweet``, (ii) weather info using ``yweather``,
(ii)i slideshow from markdown file using ``greveal`` and *reveal.js*,
(iv)  word cloud using ``d3cloud`` and *d3.js*, (v) inline graphics using ``gmatplot.py``,
and (vi) notebook mode using the standard python interpreter.


.. _ls_shot:

ls vs. gls
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-ls-gls.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Comparing plain vanilla ``ls`` command and the graphterm-aware ``gls``.
   The icons and the blue filenames are clickable. (The icon display
   is optional, and may be disabled.)

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">


.. _d3cloud_shot:

Inline word cloud using *d3.js*
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-d3cloud.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Inline word cloud display using ``d3.js``

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _notebook_shot:

GraphTerm Notebook mode running Python
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-nb.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing notebook mode for Python. Note the use of ``raw_input`` to
   read data from the terminal within notebook mode.

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _r_shot:

GraphTerm Notebook mode running R
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-r.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing notebook mode for R

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _stars3d_shot:

stars3d theme, with icons enabled
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-stars3d.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing output of the ``cat episode4.txt`` command below the
   output of the ``gls`` command, using the 3D  perspective theme. 
   This is actually a working theme, although it is meant for
   primarily for "show". Scrolling through a large text file using the
   ``vi`` editor in this theme gives a nice *roller coaster* effect!
   (This screenshot was captured with Google Chrome running on
   Mac OS X Lion, which supports hidden scrollbars. On other
   software platforms, the scrollbar will be visible.)

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _weather_shot:

Graphical weather forecast using Yahoo Weather API
=========================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-yweather1.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen for the command ``yweather`` to
   illustrate inline HTML form display. Since the location argument
   is omitted, the  form is displayed to enter the location
   name. 

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-yweather2.png
   :align: center
   :width: 90%
   :figwidth: 85%

   The submitted location information is used to generate a new
   command, ``yweather -f  "new york"``, and execute it for inline
   weather display.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _html_shot:

Inline HTML document display
=========================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-giframe1.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen for the command ``rs2html README.rst | gframe`` to
   illustrate inline HTML document display. The ``rs2html README.rst``
   command converts a *ReStructured Text* doument to HTML, writing the output
   to ``stdout``. The ``gframe`` command wraps the HTML in an *iframe*
   and displays it inline.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _matplotlib_shot:

Inline data visualization plotting using matplotlib
=========================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-gmatplot1.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen for the demo program ``gmatplot.py`` which
   generates ``matplotlib`` plots as PNG files and displays them inline.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _contourplot_shot:

Inline contour plots using matplotlib
=========================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-contourplot.jpg
   :align: center
   :width: 90%
   :figwidth: 85%

   Inline display of a 2-dimensional filled contour plot of surface
   air temperature on the globe, generated by ``matplotlib``. 

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _emacs_shot:

Text editing with emacs
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-emacs.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen for the command ``emacs gtermserver.py`` to
   illustrate backwards compatibility with the traditional terminal interface.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _gvi_shot:

Graphical code editing using a "cloud" editor
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-gvi.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen for the command ``gvi gtermserver.py`` to
   illustrate graphical editing using the Ajax.org Cloud9 editor (ACE).

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _pytutor_shot:

Code tracing using online version of Python Tutor
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-pytutor.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen for the command ``gtutor $GTERM_DIR/bin/pytutor/example-code/example.py | gframe -f``,
   which displays an inline version of the Online Python Tutorial from `pythontutor.com <http://pythontutor.com>`_.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _collapsed_shot:

Collapsed mode
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-collapsed.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the screen when all command output is collapsed. Clicking
   on any of the underlined prompts will display the command output.
   Also note  the *Bottom menubar*, which is enabled by clicking on
   the last prompt. Clicking on *Control* and then any of the prompts
   will cause the corresponding command to be pasted.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _split_shot:

Split scrolling
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-split.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the split-screen scrolling mode, where the command
   line is anchored at the bottom of the screen. Clicking on ``gls``
   output will paste filenames into the command line.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _raspberry_shot:

On the Raspberry Pi
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-raspberrypi1.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing GraphTerm running on a credit-card sized
   computer, `Raspberry Pi <http://www.raspberrypi.org/faqs>`_,
   remotely  accessed using a laptop. It runs rather slowly, but is usable.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">

.. _landslide_shot:

Web slideshows using `Landslide <https://github.com/adamzap/landslide>`_
=============================================================================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-embedded.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the output of ``glandslide -o graphterm-talk1.md | gframe``
   command, which displays a HTML5-based slideshow using
   `Markdown <http://daringfireball.net/projects/markdown/>`_.
   The displayed slide has an ``iframe`` with another
   GraphTerm session which is also displaying a slideshow...

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">


.. _tweet_shot:

Live tweet stream using gtweet
==========================================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-gtweet1.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing the output of the ``gtweet -f -s hurricane``
   command, which displays a live tweet stream mode in fullscreen mode
   for the specified search term.

   ..


.. raw:: html

   <hr style="margin-bottom: 3em;">


.. _idl_shot:

GraphTerm Notebook mode running IDL
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-idl.png
   :align: center
   :width: 90%
   :figwidth: 85%

   Showing notebook mode for IDL

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">


Miscellaneous screenshots
==================================================

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-ncl.png
   :align: center
   :width: 90%
   :figwidth: 85%

.. figure:: https://github.com/mitotic/graphterm/raw/master/doc-images/gt-screen-ec2launch1.png
   :align: center
   :width: 90%
   :figwidth: 85%

   ..

.. raw:: html

   <hr style="margin-bottom: 3em;">
