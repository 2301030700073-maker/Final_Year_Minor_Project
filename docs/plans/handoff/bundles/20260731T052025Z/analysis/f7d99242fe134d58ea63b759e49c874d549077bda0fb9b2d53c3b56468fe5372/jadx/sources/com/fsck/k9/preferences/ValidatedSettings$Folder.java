package com.fsck.k9.preferences;

import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidatedSettings$Folder {
    public final String name;
    public final Map settings;

    public ValidatedSettings$Folder(String str, Map map) {
        this.name = str;
        this.settings = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValidatedSettings$Folder)) {
            return false;
        }
        ValidatedSettings$Folder validatedSettings$Folder = (ValidatedSettings$Folder) obj;
        return this.name.equals(validatedSettings$Folder.name) && this.settings.equals(validatedSettings$Folder.settings);
    }

    public final int hashCode() {
        return this.settings.hashCode() + (this.name.hashCode() * 31);
    }

    public final String toString() {
        return "Folder(name=" + this.name + ", settings=" + this.settings + ")";
    }
}
