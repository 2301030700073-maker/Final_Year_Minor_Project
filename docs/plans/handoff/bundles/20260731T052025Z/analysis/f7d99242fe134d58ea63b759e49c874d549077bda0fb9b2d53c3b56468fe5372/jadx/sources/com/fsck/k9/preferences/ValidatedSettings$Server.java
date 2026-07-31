package com.fsck.k9.preferences;

import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidatedSettings$Server {
    public final Map extras;
    public final Map settings;
    public final String type;

    public ValidatedSettings$Server(String str, Map map, Map map2) {
        this.type = str;
        this.settings = map;
        this.extras = map2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValidatedSettings$Server)) {
            return false;
        }
        ValidatedSettings$Server validatedSettings$Server = (ValidatedSettings$Server) obj;
        return this.type.equals(validatedSettings$Server.type) && this.settings.equals(validatedSettings$Server.settings) && this.extras.equals(validatedSettings$Server.extras);
    }

    public final int hashCode() {
        return this.extras.hashCode() + ((this.settings.hashCode() + (this.type.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Server(type=" + this.type + ", settings=" + this.settings + ", extras=" + this.extras + ")";
    }
}
