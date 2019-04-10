require 'digest/md5'
require 'digest/sha1'
require 'base64'
require 'cgi/escape'
md5 = Digest::MD5.hexdigest '123456'
sha1 = Digest::SHA1.hexdigest '123456'
base64Encode = Base64.encode64 '123456'
urlEncode = CGI::escape '123456'
puts md5
puts sha1
puts base64Encode
puts urlEncode
