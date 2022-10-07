% First Monadic Grammar with all grammar patterns covered.
% -Cem Bozsahin, March 2022

% - The stuff sandwhiched as |..| before '::' is the element of grammar. POS tag is defined before '::'
%   An element can be a multi-word expression, subword element, intonation, pitch accent etc.
%   It can also be a serialized sign pattern; in fact, any phonological value that is worth a category.
% - The stuff after '::' is the category.
% - Relational rule entries (symmetric and asymmetric) start with the rule name, prefixed by #.
% - '%' and anything up to end of line is considered a comment.
% - Every entry must start on a new line, and must be line-terminated. If they are long, let them be one long line.
% - Information part of every entry must be terminated by ';' (i.e. before any in-line commenting on the right)
% - Whitespacing does not matter except in quotes.

|it         | n  :: xp[lex=no,per=s3]     : it;  % NB. expletive it for subject's type
|john       | n  :: np[per=3s,lex=yes]    : john;
|mary       | n  :: np             : mary;

|and        | c :: @x/(@x\@x) : \p\q\x. and (p x) (q x); % syncategorematic

|study      | inf  :: iv             : \x.study x;
|persuaded  | v  :: (s\np)/vp/+np   : \x.\p.\y.persuade (p x) x y;
|promised   | v  :: (s\\ np)/vp//np   : \x\p\y.promise  (p y) x y; % lambdas can be grouped
|wanted     | v  :: (s\*np)/^vp/.np   : \x\p\y.want (p x) y;
|expected   | v  :: (s\np)/vp/np   : \x\p\y.expect (p x) y;
|considered | v  :: (s\np)/propp/np: \x\p\y.consider (p x) y;
|seemed     | v  :: (s\xp)/s       : \p\x.seem p;
|seemed     | v  :: (s\np)/vp      : \p\x.seem (p x);

|to         | p  :: vp/iv          : \p.p;
|have     | aux  :: iv/iv          : \p.p;
|bought     | v  :: iv/np          : \x\y.buy x y; % this one's for perfective have/had bought
                                                 % Cf. the relational rule down below for bare/tensed form

|the      | det  :: np/*n          : def;
|car        | n  :: n              : car;
|handsome   | p  :: propp          : \x.handsome x;

|kicked the bucked | idio  :: s\np  :\x.die_euphemistic x;                      % frozen expression
|kicked     | v            :: (s\np)/'the bucket'/PredP  : \p\x\y.die_ (euphemistic p x) y; % not so frozen expression
|pick up    | pv           :: iv/np          : \x\y.pick_culminate x y           ;       % phrasal verb. All POSs are up to you.
|pick      | pv2           :: iv/'up'/np     : \x\y\z.hold (culminate y) x z     ;      % separable phrasal verb

% relational rules (as opposed to combining rules)

#past ( run  a mile, iv:\x.run x) <--> ( km, s\np:\x.past run x); % a symmetric rule
#subj (np : lt)            --> (s/(s\np):\lt\p.p lt)   ;    % an asymmetric rule

                                        % <--> means these two are related During parsing, we pick the one in surface form.
                                        %  --> means the surface string bearing the category on the lhs ALSO
                                        %     has the category on the rhs in parsing.

                                        % In --> we must take the whole lambda term (lt) in the lhs as first input
                                        % on the rhs and restructure by reductions on the rhs. 
                                        % Otherwise we need pattern matching (yikes).

                                        % This can be done since every item in lt
                                        % is known, per rule. For example, the following example is from
                                        % Turkish, turning adjectives to nouns (Lewis 1967),
                                        % mapping input lambda term \p\x.and(p x)(nompred x) to 
                                        % \x.and(nompred x)(nompred x).
#lewis-rule (np/np : lt)  --> (np : \lt.lt nompred)                   ;
                                        % example: zengin adam `rich man', zengin: `the rich'
                                        %          it is asymmetric: 'Mehmet' but *'Mehmet adam'


#past (buy, iv/np:\x\y.buy x y) <--> (bought something, (s\np)/np:\x\y.past buy x y)   ;

                                        % NB. rule name is same as run <--> ran. Useful
                                        %    (in fact essential) for capturing morphological
                                        %    paradigms, Greg Stump-style.
                                        % Note however that these paradigms are categorial, in this example
                                        %    across verbal categories.

                                        % To lexical rule aficionados: these are not lexical
                                        % rules because they do not necessarily work on
                                        % lexical forms to produce lexical forms.
                                        % NB. There is no POS tag on either rule type.
                                        % We don't use the L-word in Monadic Grammar.
                                        % All you have is elements of grammar.

% I won't offer a universal POS tag set after having written a book
%  on linguistic diversity.
% Nothing in monadic grammar depends on universal set of POS tags or universal set of basic categories.
% There is no synthetic notion that is necessary.
