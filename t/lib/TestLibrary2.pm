package TestLibrary2;

use MooseX::Types
    -declare => [qw( MTFNPY NonEmptyStr )];
use MooseX::Types::Moose 'Str';

subtype MTFNPY,
    as Str,
    where { length $_ },
    message { 'MTFNPY must not be empty' };

subtype NonEmptyStr,
    as Str,
    where { length $_ },
    message { 'Str must not be empty' };

1;
