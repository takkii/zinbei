# coding: sjis
# frozen_string_literal: true

require 'date'
require 'time'

print '������\��:'
t = Time.new # �����̓��t�Ǝ���
puts t.strftime('%Y�N%m��%d�� %H��%M��%S�b')
t = Time.new
x = Time.mktime(t.year, t.month, t.day)
y = Time.mktime(t.year + 1, 1, 1)
print '���N��1��1���܂ł���: '
print ((y - x) / 60 / 60 / 24).round
puts ' ���ł�'


# ------------------------------

# ------------------------------
td = Date.today
nen = ['����', '�ߘa']
# ------------------------------

#2019/5/1�ȍ~�͂��ꁫ
if ("#{td.year}".to_s+"#{td.month}".to_s).match?(/^20201$/)
#if "#{td.year}" + "#{td.month}" =~ /^20201$/
  puts (nen[1] + "#{(td.year - 2018)}�N"+"#{td.month}��"+"#{td.day}��") +" "+t.to_date.jisx0301
else
  puts (nen[1] + "#{(td.year - 2018)}�N".gsub(/[1]/,"��")+"#{td.month}��"+"#{td.day}��") +" "+t.to_date.jisx0301
end

#2020/1/1�ȍ~�͂��ꁫ
#puts (nen[1] + "#{(td.year - 2018)}�N"+"#{td.month}��"+"#{td.day}��") +" "+t.to_date.jisx0301