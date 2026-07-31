package com.fsck.k9.preferences;

import androidx.camera.core.impl.Config;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsFile$Account {
    public final List folders;
    public final List identities;
    public final SettingsFile$Server incoming;
    public final String name;
    public final SettingsFile$Server outgoing;
    public final Map settings;
    public final String uuid;

    public SettingsFile$Account(String str, String str2, SettingsFile$Server settingsFile$Server, SettingsFile$Server settingsFile$Server2, Map map, List list, List list2) {
        this.uuid = str;
        this.name = str2;
        this.incoming = settingsFile$Server;
        this.outgoing = settingsFile$Server2;
        this.settings = map;
        this.identities = list;
        this.folders = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsFile$Account)) {
            return false;
        }
        SettingsFile$Account settingsFile$Account = (SettingsFile$Account) obj;
        return this.uuid.equals(settingsFile$Account.uuid) && Intrinsics.areEqual(this.name, settingsFile$Account.name) && Intrinsics.areEqual(this.incoming, settingsFile$Account.incoming) && Intrinsics.areEqual(this.outgoing, settingsFile$Account.outgoing) && Intrinsics.areEqual(this.settings, settingsFile$Account.settings) && Intrinsics.areEqual(this.identities, settingsFile$Account.identities) && Intrinsics.areEqual(this.folders, settingsFile$Account.folders);
    }

    public final int hashCode() {
        int hashCode = this.uuid.hashCode() * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        SettingsFile$Server settingsFile$Server = this.incoming;
        int hashCode3 = (hashCode2 + (settingsFile$Server == null ? 0 : settingsFile$Server.hashCode())) * 31;
        SettingsFile$Server settingsFile$Server2 = this.outgoing;
        int hashCode4 = (hashCode3 + (settingsFile$Server2 == null ? 0 : settingsFile$Server2.hashCode())) * 31;
        Map map = this.settings;
        int hashCode5 = (hashCode4 + (map == null ? 0 : map.hashCode())) * 31;
        List list = this.identities;
        int hashCode6 = (hashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.folders;
        return hashCode6 + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("Account(uuid=", this.uuid, ", name=", this.name, ", incoming=");
        m.append(this.incoming);
        m.append(", outgoing=");
        m.append(this.outgoing);
        m.append(", settings=");
        m.append(this.settings);
        m.append(", identities=");
        m.append(this.identities);
        m.append(", folders=");
        m.append(this.folders);
        m.append(")");
        return m.toString();
    }
}
