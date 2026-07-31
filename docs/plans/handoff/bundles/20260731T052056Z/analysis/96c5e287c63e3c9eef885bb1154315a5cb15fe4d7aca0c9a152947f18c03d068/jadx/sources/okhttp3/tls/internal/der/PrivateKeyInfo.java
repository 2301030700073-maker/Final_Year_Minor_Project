package okhttp3.tls.internal.der;

import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PrivateKeyInfo {
    public final AlgorithmIdentifier algorithmIdentifier;
    public final ByteString privateKey;
    public final long version;

    public PrivateKeyInfo(long j, AlgorithmIdentifier algorithmIdentifier, ByteString byteString) {
        this.version = j;
        this.algorithmIdentifier = algorithmIdentifier;
        this.privateKey = byteString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivateKeyInfo)) {
            return false;
        }
        PrivateKeyInfo privateKeyInfo = (PrivateKeyInfo) obj;
        return this.version == privateKeyInfo.version && this.algorithmIdentifier.equals(privateKeyInfo.algorithmIdentifier) && this.privateKey.equals(privateKeyInfo.privateKey);
    }

    public final int hashCode() {
        return this.privateKey.hashCode() + ((this.algorithmIdentifier.hashCode() + (((int) this.version) * 31)) * 31);
    }

    public final String toString() {
        return "PrivateKeyInfo(version=" + this.version + ", algorithmIdentifier=" + this.algorithmIdentifier + ", privateKey=" + this.privateKey + ')';
    }
}
