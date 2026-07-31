package net.thunderbird.core.preference.display.miscSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayMiscSettings {
    public final boolean shouldShowSetupArchiveFolderDialog;
    public final boolean showRecentChanges;

    public DisplayMiscSettings(boolean z, boolean z2) {
        this.showRecentChanges = z;
        this.shouldShowSetupArchiveFolderDialog = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayMiscSettings)) {
            return false;
        }
        DisplayMiscSettings displayMiscSettings = (DisplayMiscSettings) obj;
        return this.showRecentChanges == displayMiscSettings.showRecentChanges && this.shouldShowSetupArchiveFolderDialog == displayMiscSettings.shouldShowSetupArchiveFolderDialog;
    }

    public final int hashCode() {
        return ((this.showRecentChanges ? 1231 : 1237) * 31) + (this.shouldShowSetupArchiveFolderDialog ? 1231 : 1237);
    }

    public final String toString() {
        return "DisplayMiscSettings(showRecentChanges=" + this.showRecentChanges + ", shouldShowSetupArchiveFolderDialog=" + this.shouldShowSetupArchiveFolderDialog + ")";
    }
}
