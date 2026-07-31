package okhttp3.tls.internal.der;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Extension {
    public final boolean critical;
    public final String id;
    public final Object value;

    public Extension(String str, boolean z, Object obj) {
        this.id = str;
        this.critical = z;
        this.value = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Extension)) {
            return false;
        }
        Extension extension = (Extension) obj;
        return this.id.equals(extension.id) && this.critical == extension.critical && Intrinsics.areEqual(this.value, extension.value);
    }

    public final int hashCode() {
        int hashCode = ((this.id.hashCode() * 31) + (this.critical ? 1231 : 1237)) * 31;
        Object obj = this.value;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "Extension(id=" + this.id + ", critical=" + this.critical + ", value=" + this.value + ')';
    }
}
