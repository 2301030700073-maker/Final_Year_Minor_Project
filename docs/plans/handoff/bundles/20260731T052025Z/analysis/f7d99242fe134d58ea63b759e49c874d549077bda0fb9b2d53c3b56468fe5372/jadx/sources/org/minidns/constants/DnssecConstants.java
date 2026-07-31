package org.minidns.constants;

import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DnssecConstants {
    public static final HashMap SIGNATURE_ALGORITHM_LUT = new HashMap();
    public static final HashMap DELEGATION_DIGEST_LUT = new HashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum DigestAlgorithm {
        SHA1(1),
        SHA256(2),
        /* JADX INFO: Fake field, exist only in values array */
        GOST(3),
        SHA384(4);

        public final byte value;

        DigestAlgorithm(int i) {
            if (i < 0 || i > 255) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                throw null;
            }
            byte b = (byte) i;
            this.value = b;
            DnssecConstants.DELEGATION_DIGEST_LUT.put(Byte.valueOf(b), this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum SignatureAlgorithm {
        RSAMD5(1),
        /* JADX INFO: Fake field, exist only in values array */
        DH(2),
        DSA(3),
        RSASHA1(5),
        DSA_NSEC3_SHA1(6),
        RSASHA1_NSEC3_SHA1(7),
        RSASHA256(8),
        RSASHA512(10),
        ECC_GOST(12),
        ECDSAP256SHA256(13),
        ECDSAP384SHA384(14),
        /* JADX INFO: Fake field, exist only in values array */
        INDIRECT(252),
        /* JADX INFO: Fake field, exist only in values array */
        PRIVATEDNS(253),
        /* JADX INFO: Fake field, exist only in values array */
        PRIVATEOID(254);

        SignatureAlgorithm(int i) {
            if (i < 0 || i > 255) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                throw null;
            }
            DnssecConstants.SIGNATURE_ALGORITHM_LUT.put(Byte.valueOf((byte) i), this);
        }

        public static SignatureAlgorithm forByte(byte b) {
            return (SignatureAlgorithm) DnssecConstants.SIGNATURE_ALGORITHM_LUT.get(Byte.valueOf(b));
        }
    }
}
