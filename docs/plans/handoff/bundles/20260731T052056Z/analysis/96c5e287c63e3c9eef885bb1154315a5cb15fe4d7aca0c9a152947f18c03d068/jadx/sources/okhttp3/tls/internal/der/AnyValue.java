package okhttp3.tls.internal.der;

import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnyValue {
    public final ByteString bytes;
    public final boolean constructed;
    public final long length;
    public final long tag;
    public final int tagClass;

    public AnyValue(int i, long j, boolean z, long j2, ByteString byteString) {
        byteString.getClass();
        this.tagClass = i;
        this.tag = j;
        this.constructed = z;
        this.length = j2;
        this.bytes = byteString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnyValue)) {
            return false;
        }
        AnyValue anyValue = (AnyValue) obj;
        return this.tagClass == anyValue.tagClass && this.tag == anyValue.tag && this.constructed == anyValue.constructed && this.length == anyValue.length && Intrinsics.areEqual(this.bytes, anyValue.bytes);
    }

    public final int hashCode() {
        return this.bytes.hashCode() + (((((((this.tagClass * 31) + ((int) this.tag)) * 31) + (!this.constructed ? 1 : 0)) * 31) + ((int) this.length)) * 31);
    }

    public final String toString() {
        return "AnyValue(tagClass=" + this.tagClass + ", tag=" + this.tag + ", constructed=" + this.constructed + ", length=" + this.length + ", bytes=" + this.bytes + ')';
    }
}
