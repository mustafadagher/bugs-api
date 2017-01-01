class RabbitPublisher
  def initialize(channel)
    self.channel = channel
  end

  def publish(exchange_name, message)
    exchange = channel.fanout(exchange_name, durable: true)
    exchange.publish(message.to_json)
  end

  def queue(name, options)
    queue = channel.queue(name, options)
  end

  private
  attr_accessor :channel
end