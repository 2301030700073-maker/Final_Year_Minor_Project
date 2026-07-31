package com.fsck.k9.preferences;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsFile$Folder {
    public final String name;
    public final Map settings;

    public SettingsFile$Folder(String str, LinkedHashMap linkedHashMap) {
        this.name = str;
        this.settings = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsFile$Folder)) {
            return false;
        }
        SettingsFile$Folder settingsFile$Folder = (SettingsFile$Folder) obj;
        return this.name.equals(settingsFile$Folder.name) && Intrinsics.areEqual(this.settings, settingsFile$Folder.settings);
    }

    public final int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        Map map = this.settings;
        return hashCode + (map == null ? 0 : map.hashCode());
    }

    public final String toString() {
        return "Folder(name=" + this.name + ", settings=" + this.settings + ")";
    }
}
