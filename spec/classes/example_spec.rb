require 'spec_helper'

describe 'jboss' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "jboss class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('jboss::params') }
        it { should contain_class('jboss::install').that_comes_before('jboss::config') }
        it { should contain_class('jboss::config') }
        it { should contain_class('jboss::service').that_subscribes_to('jboss::config') }

        it { should contain_service('jboss') }
        it { should contain_package('jboss').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'jboss class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('jboss') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
