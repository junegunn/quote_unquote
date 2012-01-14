require 'rubygems'
require 'test/unit'
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'quote_unquote'

class TestQuoteUnquote < Test::Unit::TestCase
  def test_q
    assert_equal %['hello'], "hello".q
    assert_equal %['hello\nworld'], "hello\nworld".q
  end

  def test_qq
    assert_equal %["hello"], "hello".qq
    assert_equal %["hello\nworld"], "hello\nworld".qq
  end

  def test_uq
    assert_equal %[hello], "'hello'".uq
    assert_equal %[hello'\n'world], "'hello'\n'world'".uq
  end

  def test_uqq
    assert_equal %[hello], '"hello"'.uqq
    assert_equal %[hello"\n"world], "\"hello\"\n\"world\"".uqq
  end

  def test_q_esc
    assert_equal %['I''m good'], "I'm good".q("''")
    assert_equal %[I'm good], "I'm good".q("''").uq("''")

    assert_equal %['I\\'m good'], "I'm good".q("\\'")
    assert_equal %[I'm good], "I'm good".q("\\'").uq("\\'")
  end

  def test_qq_esc
    assert_equal %["Say \\"Ho\\""], 'Say "Ho"'.qq("\\\"")
    assert_equal %[Say "Ho"], 'Say "Ho"'.qq("\\\"").uqq('\"')
  end
end
