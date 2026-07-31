package com.fsck.k9.preferences;

import androidx.camera.core.impl.Config;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsFile$Identity {
    public final String description;
    public final String email;
    public final String name;
    public final Map settings;

    public SettingsFile$Identity(String str, String str2, String str3, Map map) {
        this.name = str;
        this.email = str2;
        this.description = str3;
        this.settings = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsFile$Identity)) {
            return false;
        }
        SettingsFile$Identity settingsFile$Identity = (SettingsFile$Identity) obj;
        return Intrinsics.areEqual(this.name, settingsFile$Identity.name) && Intrinsics.areEqual(this.email, settingsFile$Identity.email) && Intrinsics.areEqual(this.description, settingsFile$Identity.description) && Intrinsics.areEqual(this.settings, settingsFile$Identity.settings);
    }

    public final int hashCode() {
        String str = this.name;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.email;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Map map = this.settings;
        return hashCode3 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("Identity(name=", this.name, ", email=", this.email, ", description=");
        m.append(this.description);
        m.append(", settings=");
        m.append(this.settings);
        m.append(")");
        return m.toString();
    }
}
