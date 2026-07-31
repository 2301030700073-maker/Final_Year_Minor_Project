package com.fsck.k9.preferences;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidatedSettings$Account {
    public final List folders;
    public final List identities;
    public final ValidatedSettings$Server incoming;
    public final String name;
    public final ValidatedSettings$Server outgoing;
    public final Map settings;
    public final String uuid;

    public ValidatedSettings$Account(String str, String str2, ValidatedSettings$Server validatedSettings$Server, ValidatedSettings$Server validatedSettings$Server2, Map map, List list, List list2) {
        this.uuid = str;
        this.name = str2;
        this.incoming = validatedSettings$Server;
        this.outgoing = validatedSettings$Server2;
        this.settings = map;
        this.identities = list;
        this.folders = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.util.List] */
    public static ValidatedSettings$Account copy$default(ValidatedSettings$Account validatedSettings$Account, ValidatedSettings$Server validatedSettings$Server, ValidatedSettings$Server validatedSettings$Server2, LinkedHashMap linkedHashMap, ArrayList arrayList, ArrayList arrayList2, int i) {
        String str = validatedSettings$Account.uuid;
        String str2 = validatedSettings$Account.name;
        if ((i & 4) != 0) {
            validatedSettings$Server = validatedSettings$Account.incoming;
        }
        ValidatedSettings$Server validatedSettings$Server3 = validatedSettings$Server;
        if ((i & 8) != 0) {
            validatedSettings$Server2 = validatedSettings$Account.outgoing;
        }
        ValidatedSettings$Server validatedSettings$Server4 = validatedSettings$Server2;
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        if ((i & 16) != 0) {
            linkedHashMap2 = validatedSettings$Account.settings;
        }
        LinkedHashMap linkedHashMap3 = linkedHashMap2;
        ArrayList arrayList3 = arrayList;
        if ((i & 32) != 0) {
            arrayList3 = validatedSettings$Account.identities;
        }
        ArrayList arrayList4 = arrayList3;
        ArrayList arrayList5 = arrayList2;
        if ((i & 64) != 0) {
            arrayList5 = validatedSettings$Account.folders;
        }
        validatedSettings$Account.getClass();
        return new ValidatedSettings$Account(str, str2, validatedSettings$Server3, validatedSettings$Server4, linkedHashMap3, arrayList4, arrayList5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValidatedSettings$Account)) {
            return false;
        }
        ValidatedSettings$Account validatedSettings$Account = (ValidatedSettings$Account) obj;
        return this.uuid.equals(validatedSettings$Account.uuid) && Intrinsics.areEqual(this.name, validatedSettings$Account.name) && this.incoming.equals(validatedSettings$Account.incoming) && this.outgoing.equals(validatedSettings$Account.outgoing) && this.settings.equals(validatedSettings$Account.settings) && this.identities.equals(validatedSettings$Account.identities) && this.folders.equals(validatedSettings$Account.folders);
    }

    public final int hashCode() {
        int hashCode = this.uuid.hashCode() * 31;
        String str = this.name;
        return this.folders.hashCode() + CameraDevices$CC.m(this.identities, (this.settings.hashCode() + ((this.outgoing.hashCode() + ((this.incoming.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31, 31);
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
