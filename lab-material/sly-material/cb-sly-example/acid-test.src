% First Monadic Grammar with all grammar patterns covered.
% -Cem Bozsahin, March 2022


|it is more | n  :: xp[typ=x]           : it;  % NB. expletive it for subject's type
|john       | n  :: np[agr=?x, num=sg]             : john;
|mary       | n  :: np             : mary;

|study    | inf  :: iv             : \x.study x   <17, 1.27>;  % last bit is optional for grammarians
|persuaded  | v  :: (s[type=decl]\np[det=none, h=?x])/vp[h=?x]/np   : \x.\p.\y.persuade (p x) x y;
|promised   | v  :: (s\np)/vp/np   : \x\p\y.promise  (p y) x y; % lambdas can be grouped
|wanted     | v  :: (s\np)/.vp/np   : \x\p\y.want (p x) y;
|expected   | v  :: (s\.np)/^vp/+np   : \x\p\y.expect (p x) y <21, 2.8>;
|considered | v  :: (s\np)//propp/np: \x\p\y.consider (p x) y;
|seemed     | v  :: (s\'it is less')/s       : \p\x.seem p;
|seemed     | v  :: (s\"it is less")/s       : \p\x.seem p;
|seemed     | v  :: (s\\np)/*vp      : \p\x.seem (p x);
|and        | c  :: (@x\@x)/@x     : \p\q\x.and (p x) (q x);
|boldly     | j  :: (s\np)/(s[o=kirk, s=?y]\np)  : \p\x.boldly (p x);



|to         | p  :: vp/iv          : \p.p;
|have     | aux  :: iv/iv          : \p.p;
|bought     | v  :: iv/np          : \x\y.buy x y; % this one's for perfective have/had bought
                                                 % Cf. the relational rule down below for bare/tensed form

|the      | det  :: np/*n          : def;
|car        | n  :: n              : car;
|handsome   | p  :: propp          : \x.handsome x;

|kicked the bucked | idio  :: s\np  :\x.die_euphemistic x;                      % frozen expression
|kicked     | v            :: (s\np)/'bucket'/PredP  : \p\x\y.die_ (euphemistic p x) y; % not so frozen expression
|pick up    | pv           :: iv/np          : \x\y.pick_culminate x y           ;       % phrasal verb. All POSs are up to you.
|pick      | pv2           :: iv/'up'/np     : \x\y\z.hold (culminate y) x z     ;      % separable phrasal verb

% relational rules (as opposed to combining rules)

#past (run, iv:\x.run x) <--> (ran, s\np:\x.past run x); % a symmetric rule
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


#past (buy, iv/np:\x\y.buy x y) <--> (bought, (s\np)/np:\x\y.past buy x y)   ;

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
