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

[![Gem Version](https://badge.fury.io/rb/zinbei.svg)](http://badge.fury.io/rb/zinbei)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)[![Build Status](https://travis-ci.org/takkii/zinbei.svg?branch=master)](https://travis-ci.org/takkii/zinbei)![GitHub release](https://img.shields.io/github/release/takkii/zinbei.svg?style=flat)

## zinbeiの取り扱い説明書

zinbeiの-zオプションは開始から全文表示まで出力にかけてます。

rantanは指定する単語を、全文検索して表示します。

zinbeiwは日本語を使ってirbのように入力待ちにてシンプルな機能を備えたシェルです

savaは置換機能であり、指定する単語をテキスト内で全て置き換えてくれます。

(空のファイルを指定して書き出す形が良いと想います。)

RubyGemsからインストールできるバージョン。

エンコーディングを部分的にSJISにしました。Windows環境を想定しています。

※ MITライセンスです

[ News ]

> 令和元年に対応しました。1.4.xシリーズをお使いください。

＜:ロミ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a function which indicates a character string respectively in zinbei.

Rantan is simple search shell, evolution every days.

In waiting for input like irb zinbeiw is a shell with the simple function.

sava is new shell.permute input word all change.

If Ruby is used, when it's included in a PC of holdings, it may be convenient.

After multi-platform-ization is being advanced by the present version.

I should move by most environment.

Before using, please agree to a license and use it.

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