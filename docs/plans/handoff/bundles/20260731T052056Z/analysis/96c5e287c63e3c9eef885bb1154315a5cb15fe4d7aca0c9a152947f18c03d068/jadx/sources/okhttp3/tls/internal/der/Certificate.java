package okhttp3.tls.internal.der;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Certificate {
    public final AlgorithmIdentifier signatureAlgorithm;
    public final BitString signatureValue;
    public final TbsCertificate tbsCertificate;

    public Certificate(TbsCertificate tbsCertificate, AlgorithmIdentifier algorithmIdentifier, BitString bitString) {
        this.tbsCertificate = tbsCertificate;
        this.signatureAlgorithm = algorithmIdentifier;
        this.signatureValue = bitString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Certificate)) {
            return false;
        }
        Certificate certificate = (Certificate) obj;
        return this.tbsCertificate.equals(certificate.tbsCertificate) && this.signatureAlgorithm.equals(certificate.signatureAlgorithm) && this.signatureValue.equals(certificate.signatureValue);
    }

    public final int hashCode() {
        return this.signatureValue.hashCode() + ((this.signatureAlgorithm.hashCode() + (this.tbsCertificate.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Certificate(tbsCertificate=" + this.tbsCertificate + ", signatureAlgorithm=" + this.signatureAlgorithm + ", signatureValue=" + this.signatureValue + ')';
    }
}
