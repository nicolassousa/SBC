
:- op( 300, xfx, <==).
:-[ifthen,backward].

% transform into if then rules:
ruleconv:-
    Concl <== List, % one extracted rule
    ruleconv(List,Concl), % convert to if then rules
    retractall(Concl <== List), % remove all <== rules
    ruleconv. % try another extracted rule
ruleconv:- !. % end

ruleconv([],_). % end
ruleconv(L,C):-
    select(X,L,L2), % select X
    process_cond(X,Cond), % convert X to Cond
    assert(if Cond then C), % assert rule
    ruleconv(L2,C). % process L2

% add one if Cond then Concl rule:
process_cond([Att=Val],C):- % end 
    atomic_list_concat([Att,"_",Val],C). % nice format

process_cond([Att=Val|R],C and CR):-
    atomic_list_concat([Att,"_",Val],C), % nice format
    process_cond(R,CR).

% save Expert System
:- ruleconv,
    tell('ifthen_rules.pl'),
    listing(if),
    told.
