package EPrints::Plugin::Script::Substitute;

=head1 NAME

EPrints::Plugin::EScript::Substitute

=head1 VERSION

Version 0.1

=head1 SYNOPSIS

Extends the EScript language with regular expression substitutions.

=cut

=head1 METHODS

=cut

# Add methods to Compiled package. All EScript function names must begin with
# 'run_'. i.e. function 'a' in EScript will be named 'run_a' in the
# package below.

package EPrints::Script::Compiled;

=head2 run_substitute

Transforms the output with a regular expression substitution.

=cut

sub run_substitute {
    my ($self, $state, $string, $re, $replace) = @_;

    $re = $re->[0]; $replace = $replace->[0];

    $string->[0] =~ s/$re/$replace/g;

    return [$string->[0], "STRING"];
}

=head1 AUTHOR

Robert J. Berry <robert.berry@liverpool.ac.uk>

=cut

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2012 The University of Liverpool

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

=cut

1;
