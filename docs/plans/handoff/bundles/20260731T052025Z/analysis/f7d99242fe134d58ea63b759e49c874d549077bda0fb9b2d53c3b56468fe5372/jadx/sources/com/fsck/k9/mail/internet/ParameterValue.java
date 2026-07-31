package com.fsck.k9.mail.internet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParameterValue {
    public final String value;
    public final boolean wasToken;

    public ParameterValue(String str, boolean z) {
        this.value = str;
        this.wasToken = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParameterValue)) {
            return false;
        }
        ParameterValue parameterValue = (ParameterValue) obj;
        return this.value.equals(parameterValue.value) && this.wasToken == parameterValue.wasToken;
    }

    public final int hashCode() {
        return (this.value.hashCode() * 31) + (this.wasToken ? 1231 : 1237);
    }

    public final String toString() {
        return "ParameterValue(value=" + this.value + ", wasToken=" + this.wasToken + ")";
    }
}
