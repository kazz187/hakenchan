module Ruboty
  module Handlers
    class Tadaima < Base
      on /(ただいま|tadaima)[!！]*/, name: 'tadaima', description: 'おかえり'

      def tadaima(message = {})
        timestamp = Time.now.to_i
        message.reply("おかえり〜 http://livedoor.blogimg.jp/anico_bin/imgs/f/a/fab8067f.jpg?#{timestamp}")
      end
    end
  end
end

