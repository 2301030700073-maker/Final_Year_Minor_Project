package com.fsck.k9.preferences;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsFile$Contents {
    public final List accounts;
    public final int contentVersion;
    public final Map globalSettings;

    public SettingsFile$Contents(int i, Map map, List list) {
        this.contentVersion = i;
        this.globalSettings = map;
        this.accounts = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsFile$Contents)) {
            return false;
        }
        SettingsFile$Contents settingsFile$Contents = (SettingsFile$Contents) obj;
        return this.contentVersion == settingsFile$Contents.contentVersion && Intrinsics.areEqual(this.globalSettings, settingsFile$Contents.globalSettings) && this.accounts.equals(settingsFile$Contents.accounts);
    }

    public final int hashCode() {
        int i = this.contentVersion * 31;
        Map map = this.globalSettings;
        return this.accounts.hashCode() + ((i + (map == null ? 0 : map.hashCode())) * 31);
    }

    public final String toString() {
        return "Contents(contentVersion=" + this.contentVersion + ", globalSettings=" + this.globalSettings + ", accounts=" + this.accounts + ")";
    }
}
