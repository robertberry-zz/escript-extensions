package EPrints::Plugin::Script::DumpData;

=head1 NAME

EPrints::Plugin::EScript::DumpData

=head1 VERSION

Version 0.1

=head1 SYNOPSIS

Extends the EScript language with a function for dumping data into the page
view (for somewhat crude debugging).

=cut

=head1 METHODS

=cut

package EPrints::Script::Compiled;

use Data::Dumper;

=head2 run_dump_data

Dumps out the data in place on the page.

=cut

sub run_dump_data {
    my ($self, $state, $data) = @_;

    return [Dumper($data), "STRING"];
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
