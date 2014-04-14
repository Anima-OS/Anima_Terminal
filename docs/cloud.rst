.. _cloud:

*********************************************************************************
 GraphTerm in the cloud
*********************************************************************************
.. contents::

.. index:: cloud computing, cloud instance, Amazon EC2

Setup
====================================================

The GraphTerm distribution includes the scripts ``ec2launch, ec2list,
ec2scp,`` and ``ec2ssh`` to launch and monitor Amazon Web Services
(AWS) Elastic Computing Cloud (EC2) instances running a GraphTerm server. These scripts
are used to test new versions of GraphTerm by running them in the "cloud".
You will need to have an AWS account to use
these scripts, and also need to install the ``boto`` python module.

If you do not have an `AWS <http://aws.amazon.com/>`_ account,
`get one <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html>`_
(this will be linked to your standard Amazon account).


If you own a
domain name, say ``myterm.com``, that you wish to use for your
cloud server, then you should also activate the
AWS `Route 53 <http://aws.amazon.com/route53/faqs/#Getting_started_with_Route_53>`_
service and create a hosted zone for ``myterm.com``. Ensure that the
nameserver records for ``myterm.com`` at your domain name registrar
point to the AWS nameservers for the hosted zone. (*If do not use your
own domain, you will need to use the long public name for your server
assigned by AWS.*)

To create an instance, use the ``ec2launch`` command. (The first time
you do this, you will be asked to enter your AWS security credentials,
which will then be stored in the file ``~/boto``.)
You will be presented with a web form to enter details of the instance
to be launched. You can specify a simple *tag name* to identify each
server. If the tag name is of the form ``subdomain.myterm.com``, then
the newly created server can be automatically accessed using this
domain name. You can also specify whether to install additional
packages, like ``pylab`` for plotting or ``R`` for statistical
analysis.

Once you fill in the form for ``ec2launch`` and submit it, a command
line will be automatically generated, with the specified options, to launch
the instance. You may need to wait several minutes for the instance
setup to complete, depending upon the compute power of the
instance. To launch another instance with slightly different
properties, you can simply recall the command line and edit it.

By default, a publicly accessible ``graphterm`` server
will be automatically started on the new instance,
Once the instance is running, you can access the GraphTerm server at
``http://subdomain.myterm.com``. You can log in to the instance using the
command ``ec2ssh ubuntu@subdomain.myterm.com``, or copy files to it
using ``ec2scp file ubuntu@subdomain.myterm.com:``

The ``ec2list`` command can be used to list all running instances, and
also to terminate them.

*Note:* If you have trouble
accessing the instance, check to make sure that the AWS `security group
<http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html>`_
associated with the cloud instance allows access to inbound TCP port
22 (for SSH access), 8900 (for GraphTerm users to connect), and
possibly port 8899 (for GraphTerm hosts to connect).

.. index:: security, authentication type

Server security
====================================================

Use the ``auth_type`` value of ``none`` in the ``ec2launch`` form
to launch a password-less public server, or use a blank entry if you
wish to launch the server manually later, using the following command,
for example::

    gtermserver --daemon=start --auth_type=none --host=<server_domain_or_address>

*Note:* Using an ``auth_type`` value of ``none`` (or ``name``, for
simple name-based authentication) is very insecure and
should not be used when handling any sensitive information.
For increased security in a publicly-accessible server, the ``--auth_type=multiuser`` option
can be used::

    gtermserver --daemon=start --auth_type=multiuser  --host=<server_domain_or_address> --super_users=ubuntu  --auto_users --allow_share

In this case, a secret master authentication code is stored in the file
``~/.graphterm/graphterm_auth@server_domain``. If the authentication
code is not already present in the file, a new random
code will be generated.
The ``--super_users=`` option specifies *super users* who can login
using the secret master authentication code.  The ``--auto_users``
option allows new users to be created on the fly. New users are logged
in automatically without a password but any subsequent logins will require
the user authentication code saved in the file
``~user/.graphterm/graphterm_auth.user@server_domain``.
If this file is downloaded and saved in the user's local ``~/.graphterm``
directory, then the following local command can be used to access the
remote server::

    gterm -u user -s server_domain 

(The super user can use the ``gauth`` command to re-generate
user authentication codes and the ``gterm_user_setup`` script to
manually configure new users.)

You can also configure the server to use *https* instead of *http*,
if you have an SSL certificate. Since GraphTerm is currently in *alpha* status,
security cannot be guaranteed even with these options enabled.  (To
avoid these issues, use SSH port forwarding to access GraphTerm on
``localhost`` whenever possible.)

Secondary cloud instances
====================================================

Secondary cloud instances can connect to the GraphTerm server on
the primary instance using the command::

    gtermhost --daemon=start --server_addr=<server_domain_or_address> <secondary_host_name>

*Note:* It would be better to use an internal (non-public) network address to
connect secondary cloud instances.
