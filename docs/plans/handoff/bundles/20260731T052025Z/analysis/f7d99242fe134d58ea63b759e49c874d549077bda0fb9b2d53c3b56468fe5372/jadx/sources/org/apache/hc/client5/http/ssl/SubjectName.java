package org.apache.hc.client5.http.ssl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SubjectName {
    public final int type;
    public final String value;

    public SubjectName(String str, int i) {
        this.value = str;
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("%s must not be negative or zero: %d", "Type", Integer.valueOf(i)));
        }
        this.type = i;
    }

    public final String toString() {
        return this.value;
    }
}
