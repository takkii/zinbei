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

[![Gem Version](https://badge.fury.io/rb/zinbei.svg)](http://badge.fury.io/rb/zinbei)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)[![Build Status](https://travis-ci.org/takkii/zinbei.svg?branch=master)](https://travis-ci.org/takkii/zinbei)![GitHub release](https://img.shields.io/github/release/takkii/zinbei.svg?style=flat)

zinbeiはオプションで検索内容が変わります。

zinbeiwは日本語を使ってirbのように入力待ちにてシンプルな機能を備えたシェルです

※ 詳しくは、開始またはヘルプページを参照してください。

RubyGemsからインストールできるバージョン。

エンコーディングを部分的にSJISにしました。Windows環境を想定しています。

[ News ]

> zinbeiのdオプション、1.5.xからはhimekuriを使います

> gem install himekuri

> zinbei -d

＜:ロミ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The search contents of zinbei are optional.

zinbeiw is a shell with simple functions that uses Japanese and waits for input like irb.

* For details, refer to the start page or the help page.

Version that can be installed from RubyGems.

Encoding was partially changed to SJIS, Windows env.

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

著作者はTakayuki Kamiyamaです。
```

英語

```markdown
zinbei just version is MIT license.

Author Takayuki Kamiyama.
```
