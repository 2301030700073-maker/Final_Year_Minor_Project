package okhttp3.tls.internal.der;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubjectPublicKeyInfo {
    public final AlgorithmIdentifier algorithm;
    public final BitString subjectPublicKey;

    public SubjectPublicKeyInfo(AlgorithmIdentifier algorithmIdentifier, BitString bitString) {
        this.algorithm = algorithmIdentifier;
        this.subjectPublicKey = bitString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubjectPublicKeyInfo)) {
            return false;
        }
        SubjectPublicKeyInfo subjectPublicKeyInfo = (SubjectPublicKeyInfo) obj;
        return this.algorithm.equals(subjectPublicKeyInfo.algorithm) && this.subjectPublicKey.equals(subjectPublicKeyInfo.subjectPublicKey);
    }

    public final int hashCode() {
        return this.subjectPublicKey.hashCode() + (this.algorithm.hashCode() * 31);
    }

    public final String toString() {
        return "SubjectPublicKeyInfo(algorithm=" + this.algorithm + ", subjectPublicKey=" + this.subjectPublicKey + ')';
    }
}
