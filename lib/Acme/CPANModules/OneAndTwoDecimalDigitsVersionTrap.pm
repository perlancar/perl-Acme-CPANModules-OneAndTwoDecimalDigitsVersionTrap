package Acme::CPANModules::OneAndTwoDecimalDigitsVersionTrap;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'Chronicle CPAN distributions which have been trapped by the one- and two decimal digits versioning scheme',
    description => <<'_',

The x.y and x.yy versioning scheme used in Perl distribution has a trap: when
you release a new version by incrementing the patchlevel part into x.y.z and
x.yy.z, the new version number will be *less* than x.y and x.yy because x.y and
x.yy will numify to x.y00 and x.yy0 respectivey; while x.y.z and x.yy.z will
numify to x.00y.z and x.0yy, respectively.

So if you release Acme-MyDist-0.1 (numifies to 0.100000) then Acme-MyDist-0.1.1
(0.001001), or Acme-MyDist-0.01 (0.010000) then Acme-MyDist-0.01.1 (0.001001),
PAUSE will *refuse* to index your new version because of "decreasing version
number."

This does *not* happen when you release Acme-MyDist-0.001 (0.001000) and then
Acme-MyDist-0.001.1 (0.001001).

This thing is peculiar to Perl, and is not intuitive. Consequently, sometimes
CPAN authors are not familiar with this and thus have fallen into this trap.

This list chronicles distributions which have been trapped by this.

For a bit more details, see
<https://perlancar.wordpress.com/2018/09/10/should-i-choose-x-yy-or-x-yyy-versioning-scheme-for-my-perl-module/>
and also <pm:version>.

_
    entries => [
        # sorted by time, from most recent

        {
            module=>"Validate::Simple",
            summary=>"From 0.01 to 0.01.1",
            date=>"2020-01-01",
            author=>"ANDREIP",
            description=><<'_',

Author's comment in ChangeLog: "Change version properly."

_
        },

        {
            module=>"Bencher",
            summary=>"From 0.46 to 0.46.1",
            date=>"2016-03-31",
            author=>"PERLANCAR",
            description=><<'_',

Author's comment in ChangeLog: "This version number is broken because 0.46 >
0.46.1 because 0.46 normalizes to 0.460.000 while 0.46.1 is 0.046.100. This has
happened a few times to me in other distributions too, so perhaps it's time to
consider switching to a 3-digit minor version."

Author's blog post:
<https://perlancar.wordpress.com/2018/09/10/should-i-choose-x-yy-or-x-yyy-versioning-scheme-for-my-perl-module/>
(2016-09-10).

_
        },

        {
            module=>"Array::Compare",
            summary=>"From 2.12 to 2.12.1",
            date=>"2016-12-08",
            author=>"DAVECROSS",
            description=><<'_',

Author's comment in ChangeLog: "Fixing the idiocy in the previous version."

Author's blog post: <https://perlhacks.com/2016/12/version-numbers/>
(2016-12-13).

_
        },

        {
            module=>"Acme::CPANLists",
            summary=>"From 0.02 to 0.9.0",
            date=>"2015-10-23",
            author=>"PERLANCAR",
            description=><<'_',

Author's comment in ChangeLog: "Update version number so it's higher than 0.02
(d'oh)."

_
        },
    ],
};

1;
# ABSTRACT:
