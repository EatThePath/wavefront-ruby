module Wavefront
  class Vertex
    attr_reader :position_index, :texture_index, :normal_index

    def initialize p_index, t_index, n_index
      raise "cannot initialize vertex without a position index!" if p_index.nil?
      @position_index, @texture_index, @normal_index = p_index, t_index, n_index
    end

    def composite_index
      "p_#{position_index}_n_#{normal_index}_t#{texture_index}"
    end

  end
end