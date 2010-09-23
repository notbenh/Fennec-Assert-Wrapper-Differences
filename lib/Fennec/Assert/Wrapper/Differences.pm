package Fennec::Assert::Wrapper::Differences;

use warnings;
use strict;

use Fennec::Assert;
use Fennec::Output::Result;
require Test::Differences;

# ABSTRACT: Fennec wrapper for L<Test::Differences>

for my $name ( qw{eq_or_diff eq_or_diff_text eq_or_diff_data unified_diff context_diff oldstyle_diff table_diff} ) {
    no strict 'refs';
    next unless Test::Differences->can( $name );
    tester( $name => tb_wrapper( \&{ 'Test::Differences::' . $name }));
};

1;                                                                                                                                                                                                                                                                                         

=head1 WRAPPED FUNCTIONS

=over 4

=item context_diff()

=item eq_or_diff()

=item eq_or_diff_data()

=item eq_or_diff_text()

=item oldstyle_diff()

=item table_diff()

=item unified_diff()

=back

=head1 AUTHOR

ben hengst, C<< <notbenh at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-fennec-assert-wrapper-differences at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Fennec-Assert-Wrapper-Differences>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Fennec::Assert::Wrapper::Differences

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Fennec-Assert-Wrapper-Differences>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Fennec-Assert-Wrapper-Differences>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Fennec-Assert-Wrapper-Differences>

=item * Search CPAN

L<http://search.cpan.org/dist/Fennec-Assert-Wrapper-Differences/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 LICENSE AND COPYRIGHT

Copyright 2010 ben hengst.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

