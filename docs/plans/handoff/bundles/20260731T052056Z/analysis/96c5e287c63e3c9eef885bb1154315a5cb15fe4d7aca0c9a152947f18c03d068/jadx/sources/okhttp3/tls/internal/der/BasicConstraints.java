package okhttp3.tls.internal.der;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BasicConstraints {
    public final boolean ca;
    public final Long maxIntermediateCas;

    public BasicConstraints(boolean z, Long l) {
        this.ca = z;
        this.maxIntermediateCas = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BasicConstraints)) {
            return false;
        }
        BasicConstraints basicConstraints = (BasicConstraints) obj;
        return this.ca == basicConstraints.ca && Intrinsics.areEqual(this.maxIntermediateCas, basicConstraints.maxIntermediateCas);
    }

    public final int hashCode() {
        int i = (this.ca ? 1231 : 1237) * 31;
        Long l = this.maxIntermediateCas;
        return i + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "BasicConstraints(ca=" + this.ca + ", maxIntermediateCas=" + this.maxIntermediateCas + ')';
    }
}
