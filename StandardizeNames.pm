package EPrints::Plugin::Script::StandardizeNames;

=head1 NAME

EPrints::Plugin::EScript::Substitute

=head1 VERSION

Version 0.1

=head1 SYNOPSIS

Extends the EScript language with a function for standardizing given names
according to the University's chosen output format.

=cut

=head1 METHODS

=cut

package EPrints::Script::Compiled;

=head2 standardize_names

Standardizes given names through removing punctuation.

=cut

sub run_standardize_names {
    my ($self, $state, $names) = @_;

    map { $_->{given} =~ s/\.//g } @{$names->[0]};

    return $names;
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
