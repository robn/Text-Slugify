# NAME

Text::Slugify - create URL slugs from text

# SYNOPSIS

    use Text::Slugify 'slugify';

    my $slug = slugify("You won't believe what happened next!");

# DESCRIPTION

Takes a bit of text, removes punctuation, spaces and other junk to produce a string suitable for use in a URL.

If you have [Text::Unaccent::PurePerl](https://metacpan.org/pod/Text::Unaccent::PurePerl) installed it will 'unaccent' accented characters instead of removing them.

# BUGS

There's probably a huge amount of inputs for which nothing sane is produced. Patches are welcome!

Please submit bug reports and patches to [https://github.com/robn/Text-Slugify/issues](https://github.com/robn/Text-Slugify/issues).

# AUTHOR

Robert Norris <rob@eatenbyagrue.org>

# COPYRIGHT AND LICENSE

Copyright (c) 2014 Robert Norris.

This module is free software, you can redistribute it and/or modify it under the same terms as Perl itself.
