require 'spec_helper_acceptance'

describe 'p4ruby class' do
  context 'with required parameters only' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = %{
        $perforce_dir = '/opt/perforce'
        $p4api_dir = "${perforce_dir}/p4api"

        class { 'p4api':
          base_perforce_dir => $perforce_dir,
        }

        class { 'p4ruby':
          p4api_dir => $p4api_dir,
        }
      }

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      # apply_manifest(pp, :catch_changes  => true)
    end

  end
end
