package androidx.camera.core.impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_Identifier {
    public final Object value;

    public AutoValue_Identifier(Object obj) {
        this.value = obj;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AutoValue_Identifier) && this.value == ((AutoValue_Identifier) obj).value;
    }

    public final int hashCode() {
        return this.value.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Identifier{value=" + this.value + "}";
    }
}
