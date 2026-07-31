package okhttp3.tls.internal.der;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AlgorithmIdentifier {
    public final String algorithm;
    public final Object parameters;

    public AlgorithmIdentifier(String str, Object obj) {
        this.algorithm = str;
        this.parameters = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AlgorithmIdentifier)) {
            return false;
        }
        AlgorithmIdentifier algorithmIdentifier = (AlgorithmIdentifier) obj;
        return this.algorithm.equals(algorithmIdentifier.algorithm) && Intrinsics.areEqual(this.parameters, algorithmIdentifier.parameters);
    }

    public final int hashCode() {
        int hashCode = this.algorithm.hashCode() * 31;
        Object obj = this.parameters;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "AlgorithmIdentifier(algorithm=" + this.algorithm + ", parameters=" + this.parameters + ')';
    }
}
