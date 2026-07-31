package net.thunderbird.feature.changelog.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangelogContract$State {
    public final ImmutableList releaseItems;
    public final boolean showRecentChanges;

    public ChangelogContract$State(ImmutableList immutableList, boolean z) {
        immutableList.getClass();
        this.releaseItems = immutableList;
        this.showRecentChanges = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChangelogContract$State)) {
            return false;
        }
        ChangelogContract$State changelogContract$State = (ChangelogContract$State) obj;
        return Intrinsics.areEqual(this.releaseItems, changelogContract$State.releaseItems) && this.showRecentChanges == changelogContract$State.showRecentChanges;
    }

    public final int hashCode() {
        return (this.releaseItems.hashCode() * 31) + (this.showRecentChanges ? 1231 : 1237);
    }

    public final String toString() {
        return "State(releaseItems=" + this.releaseItems + ", showRecentChanges=" + this.showRecentChanges + ")";
    }
}
