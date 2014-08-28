# TokenGenerator

Tiny class that generates friendly tokens using SecureRandom.

## Installation

Add this line to your application's Gemfile:

    gem 'token_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install token_generator

## Usage

`TokenGenerator` acts as a namespace for the `token` method (see below about customising the generator).

The `token` method takes an integer (default `20`) which is the number of characters.

Its second argument is the group size (default `5`).  If you don't want groups, pass `0`.

    TokenGenerator.token
    # => "PXQE2-ZQWTN-PVFQ9-KYWNC"

    TokenGenerator.token(12)
    # => "KFAE2-YWJQC-PX"

    TokenGenerator.token(12,3)
    # => "EYV-XAZ-VFF-47N"

    TokenGenerator.token(50,0)
    # => "XN76KFH9AC2AA66AXJAPT6RNMVCYJ22E4AD4ZK7E9PNFH6XDGC"

### Customising the generator

include `TokenGenerator` in your own class, and override `charset`, `length`, `group_size`

Or, to customise the global TokenGenerator by setting accessors.


    class DNAGen
      include TokenGenerator

      def charset
        ['C', 'G', 'T', 'A']
      end

      def group_size
        3
      end

      def length
        21
      end
    end

    gen = DNAGen.new

    gen.token
    # => "TTT-CGT-TTT-AAA-GTG-AGA-TCC"

    gen.token(120)
    # => "CTC-ACT-TGC-GTG-ATG-AGA-AAA-GCT-AGG-GAC-AAT-CCC-AAC-GTT-AGA-TAA-TCA-TCG-CCT-TCT-ACG-CAT-ATG-AAG-ACA-TGA-CCT-TGC-AAT-TCA-CCA-GGT-CTC-CAG-TAC-GAT-AGT-ATC-TCC-TCC"

## Contributing

1. Fork it ( https://github.com/i2w/token_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
