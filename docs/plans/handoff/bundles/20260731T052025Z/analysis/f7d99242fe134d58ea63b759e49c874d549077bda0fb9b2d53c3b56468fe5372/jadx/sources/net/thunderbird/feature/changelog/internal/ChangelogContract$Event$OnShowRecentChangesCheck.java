package net.thunderbird.feature.changelog.internal;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangelogContract$Event$OnShowRecentChangesCheck {
    public final boolean isChecked;

    public ChangelogContract$Event$OnShowRecentChangesCheck(boolean z) {
        this.isChecked = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChangelogContract$Event$OnShowRecentChangesCheck) && this.isChecked == ((ChangelogContract$Event$OnShowRecentChangesCheck) obj).isChecked;
    }

    public final int hashCode() {
        return this.isChecked ? 1231 : 1237;
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("OnShowRecentChangesCheck(isChecked=", ")", this.isChecked);
    }
}
