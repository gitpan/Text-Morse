use ExtUtils::MakeMaker;

WriteMakefile(
  ABSTRACT => "Encode and decode Morse code",
  AUTHOR   => 'Phil Pollard <bennie@cpan.org>',
  LICENSE  => 'artistic_2',
  NAME     => 'Text::Morse',
  VERSION  => '0.03',

  PREREQ_PM => {
          'Test::Simple' => '0'
        }
,

  ( $ExtUtils::MakeMaker::VERSION < 6.46
        ? ()
        : ( META_MERGE => {
                requires  => {perl => '5.006'},
                resources => {
                    # homepage => 'http://FIXME.org',
                    # license  => 'http://dev.perl.org/licenses/',
                    # MailingList => 'http://FIXME',
                    repository => {
                        type => 'git',
                        url  => 'git://github.com/bennie/perl-Text-Morse.git',
                        web  => 'http://github.com/bennie/perl-Text-Morse',
                    },
                    bugtracker => {
                        # mailto => '...',
                        web => 'https://rt.cpan.org/Dist/Display.html?Name=Text-Morse',
                    },

                },
                no_index => {directory => [qw/t/]},
            },
            META_ADD => {
                build_requires     => {},
                configure_requires => {}
            },
        )
    )

);