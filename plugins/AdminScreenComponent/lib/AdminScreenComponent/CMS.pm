package AdminScreenComponent::CMS;

use strict;
use warnings;

sub _app_cms_mode_admin_screen_component {
    my $app = shift;
    my $component = MT->component( 'AdminScreenComponent' );
    my %param;
    my $tmpl = File::Spec->catfile( $component->path, 'tmpl', 'component.tmpl' );
    return $app->build_page( $tmpl, \%param );
}

1;