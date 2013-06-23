.. _troubleshooting:

Troubleshooting FAQ
==================================================================

.. index:: troubleshooting

.. contents::
 
Terminal
----------------------------------------------------------------------------------------------

.. index:: control c, frozen screen, hung terminal, unresponsive terminal

My terminal is unresponsive?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If your terminal appears to hang, do what you would normally do in a
terminal, type ``Control-C``. If you are in the fullscreen graphics
mode (e.g., using ``gframe``), you may need to click on the top of
the terminal portion of the window to get the input focus out of the
``iframe`` and then type ``Control-C``. Finally, *refreshing the browser*
by reloading the page may also fix the problem.

.. index:: permission denied
 
I get the error message "bash: ... gls: Permission denied" on the terminal?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The ``sudo easy_install ...`` command does not set the execute permission for
commands like ``gls``. You need to execute the command ``sudo gterm_setup``
after installation to set the permissions. (The ``python setup.py
install`` command automatically sets permissions.)

.. index:: no such file or directory
 
I get the error message "bash: gls: No such file or directory" on the terminal?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The environment variable ``GTERM_DIR`` contains the directory
where ``gls`` and other commands are located. GraphTerm tries to set
the ``PATH`` variable to automatically include this directory. But
sometimes this may fail, in which case you would need to modify you
shell initialization files to include ``$GTERM_DIR`` in ``$PATH``.
(The menu command *terminal/export environment* may also help in this
situation.)

.. index:: remote login, ssh
 
When  I log into another computer using SSH from my GraphTerm window, why do many features no longer work?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is normal behavior. Many GraphTerm features only work on the
computer that the ``gtermhost`` program is running on. By default, SSH is treated
like any other program that accesses the terminal for
input/output. However, you can use the *terminal/export environment*
menu command to set shell environment variables on the remote computer
to restore some, but not all, of GraphTerm features. (For a more
permanent solution, see the :ref:`ssh` section.)

 
.. index:: copy/paste, paste
 
How do I paste text?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For certain browsers (e.g., desktop Chrome/Firefox),
the usual *Command-V* or *Control-V* key sequence should directly
paste text from the clipboard. If that doesn't work there are a couple
of other ways to paste text.
First, you can use the keyboard shortcut *Control-O* to open a
popup window, paste the text into the popup window using the
browser's paste menu command or a keyboard shortcut,
such as *Command/Control-V*, and then type *Control-O* again to
insert the text at the GraphTerm cursor location.
(The popup paste window can also be accessed using the *terminal/paste
special* menu item.)
Alternatively, for some browsers, and on the iPad, you can *click on the cursor*
before beginning the paste operation and then paste the text directly.
This second technique may not always work well for text copied from non-plain
text sources, such as a web page.
A final workaround is to paste the
text into a temporary location as plain text (such as in a plain text
editor), and then copy/paste it from there to GraphTerm.


Inline graphics and notebook mode
----------------------------------------------------------------------------------------------

.. index:: inline graphics


My inline graphics plot does not appear?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If using ``gpylab.py``, try adding a ``show(False)`` function call to display a new
image or ``show()`` to overwrite a previous image. You can also use
``display(fig)`` to display a figure.


.. index:: notebook format

How do I specify the format for saving a notebook?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The notebook save file format is determined by the filename extension,
i.e., ``.ipynb`` or ``.md``.


Session sharing
----------------------------------------------------------------------------------------------

.. index:: sharing


Others cannot see or access my terminal for sharing?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Disable the *share/private* option to share your terminal.


Server
----------------------------------------------------------------------------------------------------

I'm running the GraphTerm server on a remote computer, but I'm unable to access it using my browser?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ensure that you have included the port number in the URL, e.g., ``http//example.com:8900``
Also, ensure that any firewall on the server allows incoming
connections to the default port 8900 .

.. index:: server port

Can I run the GraphTerm server on port 80 (or 443)?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You would need run the server as the root user, which is not recommended
at this stage of GraphTerm development. A better way to achieve this is
to redirect traffic from port 80 to port 8900. On a Linux server, this
can be achieved by executing a single command (as root)::

  iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to 8900



.. index:: Windows
 
Using GraphTerm on Windows
----------------------------------------------------------------------------------------------------

 
Does GraphTerm work on Windows?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The GraphTerm client should work on a Windows browser that supports Websockets,
like the  latest versions of Chrome/Firefox/Safari or IE10. The
GraphTerm server is currently not supported on Windows. (Although the
server is written in pure python, it needs access to the
pseudo-terminal device that is only supported on Unix/Linux.)


GraphTerm fails to load properly on Windows?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ensure that you are using a browser that supports Websockets, like the
latest versions of Chrome/Firefox/Safari or IE10.
Some Anti-virus programs block Websockets on the browser. You may need to
turn them off, or allow access to the domain where the GraphTerm
server is running.

.. index:: ipad, android, virtual keyboard

Using GraphTerm on tablets
-------------------------------------------------------------------------------

How do I access the virtual keyboard on the iPad?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

*Tap the cursor* access the virtual keyboard on the iPad. If the
command line ends up behind the keyboard, retract the keyboard
and tap the cursor again.

How do I access the virtual keyboard on Android?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

GraphTerm currently works on Android devices, but not very well.  *Tap
the cursor* to activate the virtual keyboard on Android tablets. Then
tap it two more times and then start typing. Use the bottom menu bar
for convenience, especially the *Enter* option.


