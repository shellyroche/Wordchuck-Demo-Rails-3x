##
# Copyright (c) Wordchuck Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
# IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##

red = Bucket.create_or_update(:id => 1, :name => "red")
blu = Bucket.create_or_update(:id => 2, :name => "blue")
grn = Bucket.create_or_update(:id => 3, :name => "green")
emp = Bucket.create_or_update(:id => 4, :name => "empty")
one = Bucket.create_or_update(:id => 5, :name => "one")

red.items.clear
blu.items.clear
grn.items.clear
emp.items.clear
one.items.clear

red.items << Item.create(:name => "Roses", :cost => 24.95)
red.items << Item.create(:name => "Rudolph", :cost => 100000.00)
red.items << Item.create(:name => "Firetruck", :cost => 175000.00)

blu.items << Item.create(:name => "Blueberries", :cost => 2.50)
blu.items << Item.create(:name => "IBM", :cost => 175000000000.00)
blu.items << Item.create(:name => "Gonzo", :cost => 495.00)

grn.items << Item.create(:name => "Turf", :cost => 2500.00)
grn.items << Item.create(:name => "Kermit", :cost => 995.00)
grn.items << Item.create(:name => "Guacamole", :cost => 3.95)

one.items << Item.create(:name => "Cookie", :cost => 1.95)
