$LOAD_PATH << File.dirname(__FILE__) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'net/http'
require 'uri'
require 'cgi'
require 'rubygems'
require 'active_support'
require 'oauth/oauth'
require 'oauth/core_ext'

module EventMachine
  autoload :HttpClient, 'oauth/client/em_http'
end
module Net
  autoload :HTTPRequest, 'oauth/client/net_http'
end
module OAuth
  VERSION = "0.4.0"

  autoload :CLI, 'oauth/cli'
  autoload :Client, 'oauth/client'
  autoload :Consumer, 'oauth/consumer'
  autoload :Helper, 'oauth/helper'
  autoload :OAuthTestHelper, 'oauth/oauth_test_helper'
  autoload :RequestProxy, 'oauth/request_proxy'
  autoload :Server, 'oauth/server'
  autoload :Signature, 'oauth/signature'
  autoload :Error, 'oauth/errors/error'
  autoload :Problem, 'oauth/errors/problem'
  autoload :Unauthorized, 'oauth/errors/unauthorized'
  module Client
    autoload :ActionController, 'oauth/client/action_controller_request'
    autoload :Helper, 'oauth/client/helper'
  end
  module ActionController
    autoload :Base, 'oauth/client/action_controller_request'
    autoload :TestRequest, 'oauth/client/action_controller_request'
  end
  module RequestProxy
    autoload :ActionControllerRequest, 'oauth/request_proxy/action_controller_request'
    autoload :Base, 'oauth/request_proxy/base'
    autoload :JabberRequest, 'oauth/request_proxy/jabber_request'
    autoload :MockRequest, 'oauth/request_proxy/mock_request'
    autoload :RackRequest, 'oauth/request_proxy/rack_request'
    module Curl
      autoload :Easy, 'oauth/request_proxy/curb_request'
    end
    module EventMachine
      autoload :HttpRequest, 'oauth/request_proxy/em_http_request'
    end
    module Net
      module HTTP
        autoload :HTTPRequest, 'oauth/request_proxy/net_http'
      end
    end
    module Typhoeus
      autoload :Request, 'oauth/request_proxy/typhoeus'
    end
  end
  module Signature
    autoload :Base, 'oauth/signature/base'
    autoload :MD5, 'oauth/signature/md5'
    autoload :PLAINTEXT, 'oauth/signature/plaintext'
    autoload :SHA1, 'oauth/signature/sha1'
    module HMAC
      autoload :Base,   'oauth/signature/hmac/base'
      autoload :MD5,    'oauth/signature/hmac/md5'
      autoload :RMD160, 'oauth/signature/hmac/rmd160'
      autoload :SHA1,   'oauth/signature/hmac/sha1'
      autoload :SHA2,   'oauth/signature/hmac/sha2'
    end
    module RSA
      autoload :SHA1, 'oauth/signature/rsa/sha1'
    end
    autoload :AccessToken, 'oauth/tokens/access_token'
    autoload :ConsumerToken, 'oauth/tokens/consumer_token'
    autoload :RequestToken, 'oauth/tokens/request_token'
    autoload :ServerToken, 'oauth/tokens/server_token'
    autoload :Token, 'oauth/tokens/token'
  end
end
