*********************************************************************************
Getting started
*********************************************************************************
.. contents::


Running GraphTerm
====================================================

To install ``GraphTerm``, you need to have Python 2.6+ and the Bash
shell on your Mac/Linux/Unix computer. For a quick install, if the python
``setuptools`` module is already installed on your system,
use the following two commands::

   sudo easy_install graphterm
   sudo gterm_setup            # Sets up the command toolchain

(See the :ref:`installation` section of the :doc:`README` file for
more installation options.)

To start the ``GraphTerm`` server, use the command::

    gtermserver --terminal --auth_type=none

This will run the  server and open a GraphTerm terminal window
using the default browser. For multi-user computers,
omit the ``--auth_type=none`` option
when starting the server, and enter the authentication code stored in
the file ``~/.graphterm/_gterm_auth.txt`` as needed. (The ``gterm``
command can automatically enter this code for you.)

You can access the GraphTerm server
using a browser that supports websockets, such as Google Chrome,
Firefox, Safari, or IE10 (Chrome works best), by entering the following URL::

    http://localhost:8900

In the ``graphterm`` browser page, select the GraphTerm host you
wish to connect to and create a new terminal session. (Note: The GraphTerm
host is different from the network hostname for the server.)
Within a GraphTerm window, you can use *terminal/new* menu option, or
type the command ``gmenu new``, to create a new GraphTerm session 

You can also open additional GraphTerm terminal windows using
the ``gterm`` command::

    gterm --noauth [session_name]
    gterm -u ubuntu --browser="Google Chrome" https://example.com:8900

where the terminal session name argument is optional.

Type ``gtermserver -h`` to view all options for starting the server.
You can use the ``--daemon=start`` option to run the server in the
background. The ``--host=hostname`` option is useful for listening on
a public IP address instead of the default ``localhost``.  The
``--auth_type=none`` no authentication option is useful for teaching
or demonstration purposes, or on a single-user lapttop/desktop, where
security is not important.  Another useful no authentication option is
``--auth_type=name`` which enables simple name-based sharing. (For
more on running publicly accessible GraphTerm servers on the cloud,
see :ref:`virtual-setup`.)

Within the terminal, try out the following commands::

   hello_gterm.sh
   gls <directory>
   gvi <text-filename>

The ``gls`` and ``gvi`` commands in the GraphTerm toolchain imitate
basic features of the standard ``ls`` and ``vi`` commands (see
:doc:`features`).  (*Note:* You need to execute the ``sudo
gterm_setup`` command to be able to use the GraphTerm
toolchain. Otherwise, you will encounter a ``Permission denied``
error.)  To display images as thumbnails, use the ``gls -i ...``
command.  Use the ``-h`` option to display help information for these
commands, and read the tutorial :doc:`UsingGraphicalFeatures`
for usage examples.

If you wish to use GraphTerm to set up up a virtual computer lab for
multiple users, see the section :doc:`virtual-setup`. To use
GraphTerm features on remote systems and via SSH, see
:doc:`remote`. The rest of this section focuses mainly on GraphTerm
usage for single users on a local computer.


.. index:: ipad, android, tablet

iPad/Android tablet usage
--------------------------------------------------------------------------------------------

GraphTerm can be used on touch devices (phones/tablets), with some
limitations. Use the *view/footer* menu to enter keyboard input, send
special characters, access arrow keys etc. Tap the *Kbrd* in the
footer to display the keyboard.
(The *Footer menu* display can also be toggled by clicking on the last
displayed prompt.)

*Note:* You should turn off the *Autocapitalize* and *Autocorrect*
features in the language/keyboard settings if you want to do a lot of
typing on touch devices.


Inline graphics and notebook mode
===============================================================

.. index:: inline graphics, matplotlib

.. _inline_graphics:

Inline plots using matplotlib
--------------------------------------------------------------------------------------------

If you have ``matplotlib`` installed, the ``gpylab`` module in the
``$GTERM_DIR/bin`` directory can be used to start up the python
interpreter in ``pylab`` mode for inline graphics within the
GraphTerm terminal::

    python -i $GTERM_DIR/bin/gpylab.py
    >>> plot([1,2,4])

Run ``$GTERM_DIR/bin/gmatplot.py`` for a demo of inline graphics (see  :ref:`matplotlib_shot`).
See the function ``main`` in this file for sample plotting code.

 - Use ``ioff()`` to disable interactive mode
 - Use ``show()`` to update image
 - Use ``show(False)`` to display new image
 - Use ``display(fig)`` to display figure
 - Use ``resize_fig()`` to resize figure


.. index:: pandas, DataFrame

.. _pandas_mode:
 

Inline tables using pandas
--------------------------------------------------------------------------------------------

GraphTerm can display ``pandas`` DataFrame objects as a table using
HTML::

    python -i $GTERM_DIR/bin/gpylab.py
    >>> import pandas as pd
    >>> d = {'one' : [1., 2., 3., 4.],
    >>> 'two' : [4., 3., 2., 1.]}
    >>> pd.DataFrame(d)


.. index:: notebook

.. _notebook_mode:
 
Notebook mode
--------------------------------------------------------------------------------------------

GraphTerm supports a notebook mode, where code can be entered in
multiple cells and executed separately in each cell to display the
output. Cells can also contain comment text in `Markdown
<http://daringfireball.net/projects/markdown>`_ format.
Currently, the notebook mode can be used with the shell (``bash``),
or while running python (``python/ipython``) and ``R`` interpreters
(see `Using GraphTerm with R <http://code.mindmeldr.com/graphterm/R.html>`_).
Clicking on files with extensions
``*.ipynb``, ``*.py.md`` or ``*.R.md`` displayed in ``gls`` output
will automatically open a notebook using the appropriate program.
You can also try using the notebook mode 
with any other shell-like program (such as ``IDL`` or ``ncl``) which has a unique
prompt by typing *Shift-Enter* after starting the program. 

To enter the notebook mode, run the appropriate program and when the
program prompt appears,
select *notebook/new* on the top menu bar, or
type *Shift-Enter* (or *Control-Enter*, if you wish to read a notebook
file and/or specify the interpreter prompts).
You can also start up the python interpreter to load a notebook file, in
``*.ipynb`` or ``*.md`` format, from the command line::

    python -i $GTERM_DIR/bin/gpylab.py $GTERM_DIR/notebooks/SineWave.ipynb

(see  :ref:`notebook_shot`). 

Within notebook mode,
use *Shift-Enter* to execute a cell and move to the next, or
*Control-Enter* for in-place execution.
Additional keyboard shortcuts are listed
in the *help* menu, and are in many cases identical to that used by
`IPython Notebook <http://ipython.org/notebook.html>`_.

Notebooks can be saved any time using the IPython Notebook
(``*.ipynb``) or Markdown (``*.md``)
formats. The filename determines the format.
You can exit the notebook mode using
*notebook/quit* in the top menu bar, or by typing *Control-C*,
to return to the terminal mode.

 
Sharing and security
================================================================


.. index:: sessions, screensharing

.. _screensharing:

Sessions and "screensharing"
--------------------------------------------------------------------------------------------

For each host, terminal sessions are assigned default names like
``tty1``, ``tty2`` etc. You can also create unique terminal session names simply by using it in an
URL, e.g.::

      http://localhost:8900/local/mysession/?qauth=code

The ``qauth`` value is a security code. It is optional and if you omit it
the browser will re-generate it for you by
requiring you to click on a link. (This requirement prevents
unauthorized access to the terminal URL from other web sites.)

The first user to create a session "owns" it, and can make the session
publicly available by disabling the *share/private* menubar option.
The public session URL (without the ``qauth`` code) can then be shared
with other users connected to the same GraphTerm server,
to provide read-only access to the terminal.
(This is like "screensharing", but more efficient,
because only the content is shared, not the theme/style data.)

If the session owner has unlocked the
session by disabling the *share/lock* menubar option,
other users can also *steal*
control of the session using the menubar button
(or using the *share/control* menu item).

For example, if you forgot to detach your session at work, you can
``ssh`` to your desktop from home, use SSH port forwarding
to securely access your work desktop, and then *steal* the
session using your home browser (see :doc:`remote`).

Normally, only a single user has control of a terminal session at a
time. There is a *share/tandem* option that can be enabled to allow
multiple users to control the terminal session at the same
time. However, this could sometimes have unpredictable effects.


.. index:: security

Security
--------------------------------------------------------------------------------------------


You should normally run GraphTerm logged in as a regular user, using
the default ``--auth_type=singleuser`` option, which requires an access
code for HMAC authentication. Using the ``gterm`` command to create a
new terminal provides convenience and additional security, as the
command validates the server and handles authentication before
opening a new terminal. On a single user computer, such as a laptop,
the ``--auth_type=none`` option, with no access code, can be used
instead.

Although GraphTerm can be run as a public server, this feature should
be used ony for teaching and demonstration purposes. In this case, the
``--auth_type=name`` option can be used, if all users can share an
account, with no access code. The ``--auth_type=multiuser`` option,
which requires root access, is suitable for a multiple user lab
setting, providing a choice of either access code HMAC authentication or
Google Authentication. HTTPS protocol can be enabled for the public
server, using either self-signed or authoritative certificates, to
provide additional security.

When working with sensitive information, it would be best to run the
server on ``localhost`` (the default) and use SSH port forwarding to
connect to it from other computers as needed (see :doc:`remote`).

