#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

item: add an item into the menu

    {item => ["command", "label", "icon"]}


cat: add a category into the menu

    {cat => ["name", "label", "icon"]}


begin_cat: begin of a category

    {begin_cat => ["name", "icon"]}


end_cat: end of a category

    {end_cat => undef}


sep: horizontal line separator

    {sep => undef}
    {sep => "label"}


exit: default "Exit" action

    {exit => ["label", "icon"]}


pipe: a pipe menu entry

    {pipe => ["command", "label", "icon"]}


raw: any valid Openbox XML string

    {raw => q(xml string)},


obgenmenu: menu entry provided by obmenu-generator

    {obgenmenu => ["label", "icon"]}

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require '/home/bryanh/.config/obmenu-generator/config.pl';

our $SCHEMA = [
    #          COMMAND             LABEL                ICON
    {item => [$CONFIG->{terminal},	'Terminal',          'terminal']},
    {item => ['pcmanfm',			'File Manager',      'file-manager']},
    {item => ['google-chrome',		'Web Browser',       'google-chrome']},
    {item => ['pidgin',				'Instant messaging', 'pidgin']},
    {item => ['gmrun',         		'Run command',       'system-run']},
    {item => ['gvim',               'GVim',              'vim']},
    {cat =>  ['chromeapps',         'Chrome Apps',       'google-chrome']},

    {sep => undef},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},
	{sep 	=> undef},
	{pipe	=> ['cb-places-pipemenu',		'Places',		'folder_home']},
	{pipe	=> ['cb-recent-files-pipemenu',	'Recent Files',	'document-open-recent']},
	{sep	=> undef},
    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #            COMMAND     LABEL        ICON
    #{pipe => ['obbrowser', 'Disk', 'drive-harddisk']},

    {obgenmenu => ['Openbox Settings', 'applications-engineering']},
    {sep       => undef},

    {item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default Openbox's action "Exit"
    {item => ['cb-exit', 'Exit', 'exit']},
    #{exit => ['Exit', 'exit']},
]
