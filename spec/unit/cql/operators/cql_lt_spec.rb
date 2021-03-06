# encoding: utf-8

describe QueryBuilder::CQL::Operators, ".cql_lt" do

  it_behaves_like :transforming_immutable_data do
    let(:arguments) { [:cql_lt, 4] }

    let(:input)  { :foo }
    let(:output) { "foo < 4" }
  end

  it_behaves_like :transforming_immutable_data do
    let(:arguments) { [:cql_lt, :bar] }

    let(:input)  { :foo }
    let(:output) { "foo < 'bar'" }
  end

end # describe QueryBuilder::CQL::Operators.cql_lt
