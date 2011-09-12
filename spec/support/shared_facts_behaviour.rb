# encoding: utf-8

shared_examples 'an accomplished fact' do |true_or_false|
  specify '#fact_accomplished?' do
    context.fact_accomplished?(example.metadata[:fact]).should be true_or_false
  end

  specify '#(:fact)? predicate' do
    context.send("#{example.metadata[:fact]}?").should be true_or_false
  end
end

shared_examples 'a possible fact' do |true_or_false|
  specify '#fact_possible?' do
    context.fact_possible?(example.metadata[:fact]).should be true_or_false
  end
end