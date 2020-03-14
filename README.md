# Zinbei(じんべい)の取扱説明書

```markdown
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
((                                                                    ))
 )) ========= ======  ||\\      || ||========   ||=========  ======  ((
((      / /     ||    || \\     || ||        )) ||             ||     ))
 ))    / /      ||    ||  \\    || ||        )) ||             ||    ((
((    / /       ||    ||   \\   || ||========   ||=======      ||     ))
 ))  / /        ||    ||    \\  || ||        )) ||             ||    ((
((  / /         ||    ||     \\ || ||        )) ||             ||     ))
 )) ========= ======  ||      \\|| ||========   ||=========  ======  ((
((                                                                    ))
 ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

[![Gem Version](https://badge.fury.io/rb/zinbei.svg)](http://badge.fury.io/rb/zinbei)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![Build Status](https://travis-ci.org/takkii/zinbei.svg?branch=master)](https://travis-ci.org/takkii/zinbei)![GitHub release](https://img.shields.io/github/release/takkii/zinbei.svg?style=flat)[![GitHub Status](https://img.shields.io/github/last-commit/takkii/zinbei.svg?style=flat)](GitHub)


zinbeiはオプションで検索内容が変わります。

zinbeiwは日本語を使ってirbのように入力待ちにてシンプルな機能を備えたシェルです

※ 詳しくは、開始またはヘルプページを参照してください。

RubyGemsからインストールできるバージョン。

[ News ]

```markdown

1.5.xからはhimekuriを使います

gem install himekuri

zinbei -d

```

[GuuGoo](https://github.com/takkii/guugoo)

```markdown

> Ruby 2.6.5

git clone https://github.com/takkii/zinbei.git

cd zinbei

or

rubygems install ( gem install zinbei )

cd RubyInstaller2展開先(windows)/lib/ruby/gems/2.6.0/gems/zinbei-1.5.1

zinbei -g

or

zinbei -f

※ GuuGooで作成した実行ファイル(.exe)が動作します。

```

RubyGems himekuri downloads page.

[ gem install himekuri ](https://rubygems.org/gems/himekuri)

＜:ロミ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The search contents of zinbei are optional.

zinbeiw is a shell with simple functions that uses Japanese and waits for input like irb.

* For details, refer to the start page or the help page.

Version that can be installed from RubyGems.

＜:ロミ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

minitest_result [2019.3.11]

```text

------------ mini_test in filename list...start ------------

./mini_test/mini_test_date.rb
./mini_test/mini_test_version.rb
./mini_test/mini_test_encode.rb
./mini_test/mini_test_sort.rb
./mini_test/test_helper.rb
./mini_test/mini_test_method.rb
./mini_test/mini_test_updown.rb
./mini_test/mini_test_search.rb

------------ mini_test in filename list...exit -------------

Started with run options --seed 3842

TestMethod
  test_method                                                     PASS (0.00s)

TestVersion
  test_version                                                    PASS (0.00s)

TestDate
  test_date                                                       PASS (0.00s)

TestSearch
  test_search                                                     PASS (0.00s)

TestSort
  test_date                                                       PASS (0.00s)

TestEncode
  test_encode                                                     PASS (0.00s)

TestUpDown
  test_updown                                                     PASS (0.00s)

Finished in 0.00381s
7 tests, 8 assertions, 0 failures, 0 errors, 0 skips

```

unit-test_result

```text

Loaded suite test
Started
..............................
Finished in 0.008685 seconds.
-------------------------------------------------------------------------------------
30 tests, 37 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
-------------------------------------------------------------------------------------
3454.23 tests/s, 4260.22 assertions/s

```

日本語

```text
zinbeiの現在は、MITライセンスです。

著作者は、上山 孝幸です。
```

英語

```markdown
zinbei just version is MIT license.

Author Takayuki Kamiyama.
```
