package com.fsck.k9.preferences;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Settings$SettingsDescription {
    public final Object defaultValue;

    public Settings$SettingsDescription(Object obj) {
        this.defaultValue = obj;
    }

    public Object fromPrettyString(String str) {
        return fromString(str);
    }

    public abstract Object fromString(String str);

    public String toPrettyString(Object obj) {
        return toString(obj);
    }

    public String toString(Object obj) {
        return obj.toString();
    }
}
