package net.newpipe.app.screen.about.navigation;

import newpipe.shared.generated.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public enum Page {
    ABOUT((StringResource) String0_commonMainKt.tab_about$delegate.getValue()),
    LICENSE((StringResource) String0_commonMainKt.tab_licenses$delegate.getValue());

    private final StringResource localizedTitle;

    Page(StringResource stringResource) {
        this.localizedTitle = stringResource;
    }

    public final StringResource getLocalizedTitle() {
        return this.localizedTitle;
    }
}
