require('spec_helper')

describe(Step) do
  it {should have_many(:recipes)}
end
