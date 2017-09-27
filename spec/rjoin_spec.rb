require('spec_helper')

describe(Rjoin) do
  it {should belong_to(:recipe)}
  it {should belong_to(:tag)}
  it {should belong_to(:step)}
  it {should belong_to(:ingredient)}
end
