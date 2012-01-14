# quote_unquote
Wraps (and unwraps) strings with quotes.

## Installation

```ruby
gem install quote_unquote
```

## Examples

```ruby
require 'quote_unquote'

"hello".q     # 'hello'
"hello".qq    # "hello"

"'hello'".uq  # hello
'"hello"'.uqq # hello
```

"Is this a joke?"
"Yup."

## Slightly, just slightly more useful examples

```ruby
# Escapes the quotation marks
"I'm good".q("''")            # 'I''m good'
"I'm good".q("''").uq("''")   # I'm good
```

## Copyright

Copyright (c) 2011 Junegunn Choi. See LICENSE.txt for
further details.

