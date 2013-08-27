require 'test_helper'

class PostTest < MiniTest::Unit::TestCase
# 1: Client
  # - default nil
  # - set
  # - call
  # -
# 2: Search
# 3: Reply
# 4: Follow
end

describe Tbot, "Tbot" do
  client = MiniTest::Mock.new

  describe "Configuration" do
    it "should default to nil" do
      Tbot::Bot.client.must_equal nil
    end
    it "should be settable" do
      Tbot::Bot.client = {}
      assert_kind_of Twitter::Client, Tbot::Bot.client
    end

  end

  describe "Searching" do
    # client.expect(:search, YAML::load( File.read('./test/fixtures/tweet.yaml') ), ['term', {}] )

    it "should return results" do
      client.expect(:search, YAML::load( File.read('./test/fixtures/tweet.yaml') ), ['term'] )
      client.search("term")['statuses'].must_be_kind_of Array
    end

    it "should each contain text for each" do
      client.expect(:search, YAML::load( File.read('./test/fixtures/tweet.yaml') ), ['term'] )
      assert_equal client.search("term")['statuses'].first['text'], "Swindon is on Street Crime UK HAHAHA"
    end
  end

  describe "Replying" do
    it "sends tweet to a user" do
      tw = YAML::load( File.read('./test/fixtures/tweet.yaml') ).statuses.first

      client.expect(:reply, "@#{tw.user.screen_name}", [tw] )
      client.reply(tw).must_match /^@shanahillxo.*/
    end
  end

  describe "Following" do
    it "follows a user" do
      tw = YAML::load( File.read('./test/fixtures/tweet.yaml') ).statuses.first

      # Docs as so unclear.
      client.expect(:follow, Twitter::User, [tw] )
      client.follow(tw).must_respond_to :identity_map
    end
  end
end