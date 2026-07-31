package okhttp3.tls.internal.der;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Validity {
    public final long notAfter;
    public final long notBefore;

    public Validity(long j, long j2) {
        this.notBefore = j;
        this.notAfter = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Validity)) {
            return false;
        }
        Validity validity = (Validity) obj;
        return this.notBefore == validity.notBefore && this.notAfter == validity.notAfter;
    }

    public final int hashCode() {
        return (((int) this.notBefore) * 31) + ((int) this.notAfter);
    }

    public final String toString() {
        return "Validity(notBefore=" + this.notBefore + ", notAfter=" + this.notAfter + ')';
    }
}
