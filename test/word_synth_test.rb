require 'minitest/autorun'
require './chapter_10/word_synth'
require './chapter_10/effects'

class WordSynthTest < Minitest::Test
  def test_play
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end
end