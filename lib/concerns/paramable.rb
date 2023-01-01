module Paramable
    attr_accessor :name

    def to_param
        name.downcase.gsub(' ', '-')
    end
end