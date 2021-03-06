require 'spec_helper'
require 'pacer/graph/element_mixin_spec'

Run.all do
  it_uses Pacer::ElementMixin do

    let(:v0) { graph.create_vertex(Tackle::SimpleMixin, :name => 'eliza') }
    let(:v1) { graph.create_vertex(Tackle::SimpleMixin, :name => 'darrick') }
    let(:e0) { graph.create_edge nil, v0, v1, :links, Tackle::SimpleMixin }
    let(:e1) { graph.create_edge nil, v0, v1, :relinks, Tackle::SimpleMixin }
  end
end
