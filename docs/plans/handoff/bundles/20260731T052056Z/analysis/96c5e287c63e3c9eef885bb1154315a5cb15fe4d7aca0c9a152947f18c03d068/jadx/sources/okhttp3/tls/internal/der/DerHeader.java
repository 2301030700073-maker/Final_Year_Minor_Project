package okhttp3.tls.internal.der;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DerHeader {
    public final boolean constructed;
    public final long length;
    public final long tag;
    public final int tagClass;

    public DerHeader(int i, long j, boolean z, long j2) {
        this.tagClass = i;
        this.tag = j;
        this.constructed = z;
        this.length = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerHeader)) {
            return false;
        }
        DerHeader derHeader = (DerHeader) obj;
        return this.tagClass == derHeader.tagClass && this.tag == derHeader.tag && this.constructed == derHeader.constructed && this.length == derHeader.length;
    }

    public final int hashCode() {
        return (((((this.tagClass * 31) + ((int) this.tag)) * 31) + (!this.constructed ? 1 : 0)) * 31) + ((int) this.length);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.tagClass);
        sb.append('/');
        sb.append(this.tag);
        return sb.toString();
    }
}
