package net.thunderbird.core.preference.display;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplaySettings {
    public final DisplayCoreSettings coreSettings;
    public final DisplayInboxSettings inboxSettings;
    public final DisplayMiscSettings miscSettings;
    public final DisplayVisualSettings visualSettings;

    public DisplaySettings(DisplayCoreSettings displayCoreSettings, DisplayInboxSettings displayInboxSettings, DisplayVisualSettings displayVisualSettings, DisplayMiscSettings displayMiscSettings) {
        displayCoreSettings.getClass();
        displayInboxSettings.getClass();
        displayVisualSettings.getClass();
        displayMiscSettings.getClass();
        this.coreSettings = displayCoreSettings;
        this.inboxSettings = displayInboxSettings;
        this.visualSettings = displayVisualSettings;
        this.miscSettings = displayMiscSettings;
    }

    public static DisplaySettings copy$default(DisplaySettings displaySettings, DisplayCoreSettings displayCoreSettings, DisplayInboxSettings displayInboxSettings, DisplayVisualSettings displayVisualSettings, DisplayMiscSettings displayMiscSettings, int i) {
        if ((i & 1) != 0) {
            displayCoreSettings = displaySettings.coreSettings;
        }
        if ((i & 2) != 0) {
            displayInboxSettings = displaySettings.inboxSettings;
        }
        if ((i & 4) != 0) {
            displayVisualSettings = displaySettings.visualSettings;
        }
        if ((i & 8) != 0) {
            displayMiscSettings = displaySettings.miscSettings;
        }
        displaySettings.getClass();
        displayCoreSettings.getClass();
        displayInboxSettings.getClass();
        displayVisualSettings.getClass();
        displayMiscSettings.getClass();
        return new DisplaySettings(displayCoreSettings, displayInboxSettings, displayVisualSettings, displayMiscSettings);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplaySettings)) {
            return false;
        }
        DisplaySettings displaySettings = (DisplaySettings) obj;
        return Intrinsics.areEqual(this.coreSettings, displaySettings.coreSettings) && Intrinsics.areEqual(this.inboxSettings, displaySettings.inboxSettings) && Intrinsics.areEqual(this.visualSettings, displaySettings.visualSettings) && Intrinsics.areEqual(this.miscSettings, displaySettings.miscSettings);
    }

    public final int hashCode() {
        return this.miscSettings.hashCode() + ((this.visualSettings.hashCode() + ((this.inboxSettings.hashCode() + (this.coreSettings.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "DisplaySettings(coreSettings=" + this.coreSettings + ", inboxSettings=" + this.inboxSettings + ", visualSettings=" + this.visualSettings + ", miscSettings=" + this.miscSettings + ")";
    }
}
