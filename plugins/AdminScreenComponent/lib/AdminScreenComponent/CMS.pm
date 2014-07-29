package AdminScreenComponent::CMS;

use strict;
use warnings;

sub _app_cms_mode_admin_screen_component {
    my $app = shift;
    my $component = MT->component( 'AdminScreenComponent' );
    my %param;
    my $tmpl_name = 'component';
    if ( my $step = $app->param( 'step' ) ) {
        if ( $step =~ /^[1-4]$/ ) {
            $tmpl_name .= '_step_' . $step;
        }
    } else {
        $tmpl_name .= '_step_4';
    }
    $param{ screen_group } = 'admin_screen_component'; 
    my $tmpl = File::Spec->catfile( $component->path, 'tmpl', $tmpl_name . '.tmpl' );
    return $app->build_page( $tmpl, \%param );
}

1;