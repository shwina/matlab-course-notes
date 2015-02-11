%% Conditional Statements in MATLAB

% Copyright 2015, Ashwin Srinath, All Rights Reserved
% LICENSE: MIT (http://opensource.org/licenses/MIT)
% (TL;DR) 
% You can do whatever you want
% with this code
% as long as you include the original copyright
% and license in their original sources.
% I don't guarantee that
% any of this code
% serves any purpose whatsoever.

%%
% So far, we've learned how to manipulate data,
% do I/O and write functions in MATLAB. But
% our programs do the same thing every time,
% regardless of what data they are given. We
% want to write programs that make _choices_ based
% on the data they are given, and to do that,
% we have to learn about _conditional statements_.

%% True and False
%

%%
3 == 4

%%
3 == 3

%%
% In MATLAB, we can check for the _equality_
% of two values by using the |==| operator.
% If the values are equal, MATLAB returns |1|.
% If the values are not equal, MATLAB returns |0|.
% In MATLAB, and many other languages, the numbers
% |1| and |0| are used to represent "True" and "False"
% respectively.

%% Relational operators
% There are several operators like |==| that let
% us check for different conditions:

%%
a = 21.4;

%%
a > 5 % greater than

%%
a < 16 % less than

%%

a >= 20 % greater than or equal to

%%

a <= 20 % lesser than or equal to

%%

a ~= 10 % not equal to

%% Building more complex conditions
% We can check if more complicated conditions
% are "true" or "false" by using so-called
% _logical_ operators like AND (|&&|) and
% OR (||||):

a = 4;
b = 2.4;

%%
a >= 4 && b < 4

%%
a >= 4 && b < 2

%%
a >= 4 || b < 2

%%

(a >= 4 && b < 2) || (a-b > 0)

%% Conditions with vectors:
%
% We can also use |==|, |<=|, etc., with
% _vectors_, if they are the same length:

a = [1.0, 2.5, -6.0];
b = [1.0, 3.5, -12.0];

%%
a == b

%%
a > b

%%
a < b

%%
% and there are special functions
% to let us do common checks like:

all(a > 0) % check if all elements are greater than 0

%%

any(a > 0) % check if any element is greater than 0

%%

all(a > 0) && any(a > 5)

%%
a = [1,2,3];
b = [1,2,3];

all(a == b); % effectively checks if a and b represent the same vector.

%%
% These ideas extend in a straightforward way to
% matrices as well.

%% Checking for equality of strings:
%
% Sometimes, we'd like to check for the equality
% of two strings:

'foo' == 'foo'

%%
'foo' == 'bar'

%%
% 'foo' == 'penguin'

%%
% Strings are just
% vectors of characters, and it doesn't make
% sense to compare vectors of unequal lengths.
% Even if the strings _are_ of equal lengths,
% this is not a very useful way to check for their
% equality.
% The correct way is to use |strcmp| (string compare):

%%

strcmp('foo', 'foo')

%%

strcmp('foo', 'penguin')

%%

strcmp('foo', 'Foo')

%%
% If we don't care about capitalization (e.g., we
% think of |'Foo'|, |'FOO'| and |'foo'| as equal):

strcmpi('Foo', 'FOO')


%% Making decisions
%
% We've learned how to check for the "truth"
% of different expressions. And, we've learned how to
% build complex conditions using |&&| and
% ||||. We've also learned to write conditions
% involving vectors and strings.
%
% Now, we will learn how to write programs
% that _make choices_ based on whether some
% conditions are true or false.

%%

%%
%  a = input('Input a number: ');
%
%  if a > 0
%      disp('a is positive');
%  else
%      disp('a is negative');
%  end

%%
% The above construct is called an IF-ELSE statement.
% It starts with the keyword |if|, followed by a
% condition. If the condition is true, then the code
% under the |if| block is executed. If the condition
% is false, then the code under the |else| block
% is executed.

%%
% We can chain several conditions using |elseif|,
% like so:

%%
%  a = input('Input a number: ');
%
%  if a > 0
%      disp('a is positive');
%  elseif a < 0
%      disp('a is negative');
%  else
%      disp('a is zero');
%  end

%%
% If you omit the |else| block, MATLAB will
% do nothing if the test evaluates to "false":

%%
%  a = input('Input a number: ');
%
%  if a > 0
%      disp('a is positive');
%  end

%% A note about floats
% Writing equalities with floating-point, i.e., "decimal"
% numbers is tricky:

a = 1/3;
b = 0.33333333;
a == b

%%
% Sometimes, we don't want MATLAB to be
% too fussy about precision. In this case, we can
% do something like this:

tolerance = 1e-6;
a = 1/3;
b = 0.33333333;

abs(a - b) <= tolerance

