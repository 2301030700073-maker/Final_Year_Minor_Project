package com.fsck.k9.preferences;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidatedSettings$Identity {
    public final String description;
    public final String email;
    public final String name;
    public final Map settings;

    public ValidatedSettings$Identity(String str, String str2, String str3, Map map) {
        str2.getClass();
        this.name = str;
        this.email = str2;
        this.description = str3;
        this.settings = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValidatedSettings$Identity)) {
            return false;
        }
        ValidatedSettings$Identity validatedSettings$Identity = (ValidatedSettings$Identity) obj;
        return Intrinsics.areEqual(this.name, validatedSettings$Identity.name) && Intrinsics.areEqual(this.email, validatedSettings$Identity.email) && Intrinsics.areEqual(this.description, validatedSettings$Identity.description) && this.settings.equals(validatedSettings$Identity.settings);
    }

    public final int hashCode() {
        String str = this.name;
        int m = Modifier.CC.m((str == null ? 0 : str.hashCode()) * 31, this.email, 31);
        String str2 = this.description;
        return this.settings.hashCode() + ((m + (str2 != null ? str2.hashCode() : 0)) * 31);
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
