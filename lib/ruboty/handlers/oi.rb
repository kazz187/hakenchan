module Ruboty
  module Handlers
    class Oi < Base
      on /oi ?(?<keyword>.+)?/, name: 'oi', description: 'oi'
      on /(i love you|愛してる)/, name: 'i_love_you', description: '愛してる'
      on /俺だ/, name: 'its_me', description: '俺だー'
      on /(仕事しろ|働け)/, name: 'hard_work', description: '仕事しろ'

      def oi(message = {})
        message.reply("#{message[:keyword]}???")
      end
      
      def i_love_you(message = {})
        timestamp = Time.now.to_i
        dont_like_words = ['は？', '何いってんの？', 'はいはい', '黙ってください']
        loved_users = ['kazz187']
        if (loved_users.include?(message.original[:from_name]))
          message.reply("わたしもだよー :heart: https://pbs.twimg.com/media/B2fJv8iCMAAmdTa.jpg#ts=#{timestamp}")
        else
          message.reply(dont_like_words.sample)
        end
      end
      
      def its_me(message = {})
        timestamp = Time.now.to_i
        dont_like_words = ['誰？', 'どちらさまでしょうか？', '仕事しろ']
        loved_users = ['kazz187']
        if (loved_users.include?(message.original[:from_name]))
          message.reply("#{message.original[:from_name]}ー :heart: http://i.imgur.com/yXndygI.jpg#ts=#{timestamp}")
        else
          message.reply(dont_like_words.sample)
        end
      end
      
      def hard_work(message = {})
        timestamp = Time.now.to_i
        message.reply("今日も一日頑張るぞい http://pbs.twimg.com/media/B9FmUY6CcAAASJV.jpg#ts=#{timestamp}")
      end
    end
  end
end

