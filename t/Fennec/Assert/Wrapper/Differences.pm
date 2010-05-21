package TEST::Fennec::Assert::Wrapper::Differences;
use strict;
use warnings;
use Fennec;

require_or_skip Test::Differences;

tests load {
    use_ok( 'Fennec::Assert::Wrapper::Differences' );
    can_ok( $self, qw{eq_or_diff
                      eq_or_diff_text
                      eq_or_diff_data
                      unified_diff
                      context_diff
                      oldstyle_diff
                      table_diff
                     });
};
