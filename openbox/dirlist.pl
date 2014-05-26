#!/usr/bin/perl

use MIME::Types;

# dirlist.pl by Dave Foster <daf@minuslab.net>
# Openbox pipe menu that shows the contents of a directory, recursively.
# REQUIRES MIME::Types module. It's available in portage, albiet ~masked: dev-perl/MIME-Types

# Changelog - 
#  10 Oct 2004 - Version 1.3 (Heading fixed, added MIME Type support, bug fix for "/")
#	9 Oct 2004 - Version 1.2 (Fixed &amp; handling)
#				 Version 1.1 (Added ability to ignore files/dirs starting with .)
#				 Version 1.0 (Initial Release)

# Future plans -
#	have a limiter for the number of files it would display.

# install instructions:
# 1) Put script somewhere (~/.config/openbox/scripts/ works well)
# 2) Make script executable (chmod +x dirlist.pl)
# 3) Edit openbox menu file:
#	a) Add <menu id="dirlist-menu" label="Dir" execute="pathto/dirlist.pl thediryouwanttosee" />
#	b) Add <menu id="dirlist-menu"/> somewhere on your root menu or wherever you want it.
# 4) repeat as needed.

# CONFIG: set these to what you want to do with each item
# set dofilesize to 0 if you don't want filesizes to be computed

# ###########################
# general config
# ###########################

# action to take on directory items (top of the menu)
$diraction = "spacefm";

# show files sizes (0 or 1)
$dofilesize = 0;

# ignore files/dirs beginning with . (0 or 1)
$ignoredotfiles = 1;

# the default action to take.  %1 is replaced by a filename.
# if you don't want anything to happen on unregistered types, set this variable to "true".
$defaultAction = "leafpad %1";

# the command for "run in terminal"
$termCommand = "lxterminal -e";

# ###########################
# /general config
# ###########################

#
# don't touch, these must be defined before you can set your types!
#
my MIME::Types $types = MIME::Types->new;

@mimeHandlers = ();
@mimeRangeHandlers = ();

# ###########################
# set your mime handlers here
# ###########################

# to add an action for a specific mime type:
# 	add_mime_handler("MIME-TYPE", "ACTION", run in terminal (1) );
#
#	In the action, a %1 indicates the filename.
#   You can leave the last argument off if you don't want it to run in a terminal.
#	If you want to run the file (say for application/* types), just put "%1" as the action.
#	
#	To cover all of a range of MIMEs, use this notation: type/*
#	Example: add_mime_handler("text/*", "gedit %1");
#	Specific defined MIMEs take precedence over ranged defined types.

add_mime_handler("text/*", "geany %1");
add_mime_handler("text/comma-separated-values", "gnumeric %1");
add_mime_handler("application/x-perl", "geany %1");
add_mime_handler("application/x-php", "geany %1");
add_mime_handler("image/*", "feh %1");
add_mime_handler("video/*", "vlc %1");

# ##########################
# / set mime handlers
# ##########################

#
# begin script 
#

if ( scalar(@ARGV) != 1 ) {
	print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
	print "<openbox_pipe_menu>\n";
	
	print "\t<item label=\"ER: NO DIR\">\n";
	print "\t\t<action name=\"Execute\"><execute>true</execute></action>\n";
	print "\t</item>\n";
	
	print "</openbox_pipe_menu>\n";
	exit;
}

print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print "<openbox_pipe_menu>\n";

$dir = $ARGV[0];

opendir DIR, $dir;
@files = readdir DIR;
closedir DIR;

@dirs = ();
@keepfiles = ();

foreach $file ( @files ) {
	next if ( $file eq "." || $file eq ".." );
	next if ( substr($file,0,1) eq "." && $ignoredotfiles);
	$absolute = $dir;
	$absolute = $absolute . "/" if ( substr($absolute,-1) ne "/" );
	$absolute = $absolute . $file;
	if ( -d $absolute ) {
		push @dirs, $absolute;
	} elsif ( -f $absolute ) {
		push @keepfiles, $file;
	}
}

@dirs = sort(@dirs);
@keepfiles = sort(@keepfiles);

# print header
@chunks = split /\//, $dir;
$last = ( $dir eq "/" ) ? "/" : $chunks[$#chunks];

print "\t<item label=\"" . string_protect($last) . "\">\n";
print "\t\t<action name=\"Execute\"><execute>$diraction " . string_protect($dir) . "</execute></action>\n";
print "\t</item>\n";

print "\t<separator />\n";

foreach ( @dirs ) {
	script_link($_);
}

# send a list to print files
$absolute = $dir;
$absolute = $absolute . "/" if ( substr($absolute,-1) ne "/" );

files_menu($absolute,@keepfiles);

print "</openbox_pipe_menu>\n";

sub files_menu {
	$rootdir = shift;
	
	foreach $file ( @_ ) {
		
		$abs = $rootdir . $file;

		@finfo = stat($abs);
		$sizeout = ( $dofilesize == 1 ) ? $sizeout = sprintf(" (%.1f kb)", $finfo[7] / 1024) : "";
	
		$actiontotake = get_action($abs);

		$file = string_protect($file);

		print "\t<item label=\"$file$sizeout\">\n";
		print "\t\t<action name=\"Execute\"><execute>" . string_protect($actiontotake) . "</execute></action>\n";
		print "\t</item>\n";
	}
}	

sub script_link {
	my $name = shift;
	$sname = $name;
	$sname =~ s/[^A-Za-z0-9]/_/g;
	@chunks = split /\//, $name;
	$last = string_protect($chunks[$#chunks]);

	print "\t<menu id=\"$sname\" label=\"$last\" execute=\"$0 " . string_protect($name) ."\" />\n";
}

sub string_protect {
	my $str = shift;
	$str =~ s/&/&amp;/g;
	return $str;
}

# 
# funcs for mime type stuff!
#
sub add_mime_handler {
	$mtype = shift;
	$action = shift;
	$interm = ( scalar(@_)>0 ) ? shift : 0;

	# disgusting... check for the *, add appropriately.
	if ( $mtype =~ /(\w+)\/\*$/ ) {
		push @mimeDefaultHandlers, { "mime-type"=>$1, "action"=>$action, "interm"=>$interm };
	} else {
		push @mimeHandlers, { "mime-type"=>$mtype, "action"=>$action, "interm"=>$interm };
	}
}

sub get_action {
	$file = shift;

	$retdefault = $defaultAction;
	$retdefault =~ s/%1/$file/;

	my MIME::Type $mime = $types->mimeTypeOf($file);
	return "$retdefault" if ( !defined $mime );

	# find mime type in our handler array first
	foreach $handler ( @mimeHandlers ) {
		if ( $handler->{"mime-type"} eq "$mime" ) {
			# replace %1
			$action = $handler->{"action"};
			$action =~ s/%1/$file/;
			return ( $handler->{"interm"} == 1 ) ? "$termCommand $action" : $action;
		}
	}

	# if we get here, we didn't find it, so search to see if it matches the first
	($major,$minor) = split /\//, "$mime";

	foreach $handler ( @mimeDefaultHandlers ) {
		if ( $handler->{"mime-type"} eq $major ) {
			# replace %1
			$action = $handler->{"action"};
			$action =~ s/%1/$file/;
			return ( $handler->{"interm"} == 1 ) ? "$termCommand $action" : $action;
		}
	}

	# okay if we get here, just get out of here
	return $retdefault;
}
