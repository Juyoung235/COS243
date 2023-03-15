class ApplicationController < ActionController::Base
end

def hello
    render html: "hello world!"
end
