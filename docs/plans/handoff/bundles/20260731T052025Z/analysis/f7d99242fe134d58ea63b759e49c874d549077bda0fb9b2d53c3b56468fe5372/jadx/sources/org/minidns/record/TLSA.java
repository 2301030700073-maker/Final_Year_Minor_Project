package org.minidns.record;

import java.io.DataOutputStream;
import java.math.BigInteger;
import java.util.HashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TLSA extends Data {
    public final byte certUsageByte;
    public final byte[] certificateAssociation;
    public final byte matchingTypeByte;
    public final byte selectorByte;
    public static final HashMap CERT_USAGE_LUT = new HashMap();
    public static final HashMap SELECTOR_LUT = new HashMap();
    public static final HashMap MATCHING_TYPE_LUT = new HashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum CertUsage {
        /* JADX INFO: Fake field, exist only in values array */
        caConstraint((byte) 0),
        /* JADX INFO: Fake field, exist only in values array */
        serviceCertificateConstraint((byte) 1),
        /* JADX INFO: Fake field, exist only in values array */
        trustAnchorAssertion((byte) 2),
        /* JADX INFO: Fake field, exist only in values array */
        domainIssuedCertificate((byte) 3);

        CertUsage(byte b) {
            TLSA.CERT_USAGE_LUT.put(Byte.valueOf(b), this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum MatchingType {
        /* JADX INFO: Fake field, exist only in values array */
        noHash((byte) 0),
        /* JADX INFO: Fake field, exist only in values array */
        sha256((byte) 1),
        /* JADX INFO: Fake field, exist only in values array */
        sha512((byte) 2);

        MatchingType(byte b) {
            TLSA.MATCHING_TYPE_LUT.put(Byte.valueOf(b), this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum Selector {
        /* JADX INFO: Fake field, exist only in values array */
        fullCertificate((byte) 0),
        /* JADX INFO: Fake field, exist only in values array */
        subjectPublicKeyInfo((byte) 1);

        Selector(byte b) {
            TLSA.SELECTOR_LUT.put(Byte.valueOf(b), this);
        }
    }

    static {
        CertUsage.values();
        Selector.values();
        MatchingType.values();
    }

    public TLSA(byte b, byte b2, byte b3, byte[] bArr) {
        this.certUsageByte = b;
        this.selectorByte = b2;
        this.matchingTypeByte = b3;
        this.certificateAssociation = bArr;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeByte(this.certUsageByte);
        dataOutputStream.writeByte(this.selectorByte);
        dataOutputStream.writeByte(this.matchingTypeByte);
        dataOutputStream.write(this.certificateAssociation);
    }

    public final String toString() {
        return ((int) this.certUsageByte) + ' ' + ((int) this.selectorByte) + ' ' + ((int) this.matchingTypeByte) + ' ' + new BigInteger(1, this.certificateAssociation).toString(16);
    }
}
