# InSpec test for recipe tdd_example::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe port(80) do
  it { should be_listening }
end

if os.windows?
  # https://github.com/inspec/inspec/issues/3959
  describe powershell('iwr http://localhost') do
    its('exit_status') { should eq 0 }
  end
else
  describe http('http://localhost') do
    its('status') { should cmp 200 }
  end
end
