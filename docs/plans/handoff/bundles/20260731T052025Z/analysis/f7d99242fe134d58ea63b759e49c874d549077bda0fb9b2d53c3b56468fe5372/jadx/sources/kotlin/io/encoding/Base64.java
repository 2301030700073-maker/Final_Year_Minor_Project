package kotlin.io.encoding;

import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Base64 {
    public static final Default Default = new Default(-1, false, false);
    public final boolean isMimeScheme;
    public final boolean isUrlSafe;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Default extends Base64 {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PaddingOption {
        public static final /* synthetic */ PaddingOption[] $VALUES = {new PaddingOption("PRESENT", 0), new PaddingOption("ABSENT", 1), new PaddingOption("PRESENT_OPTIONAL", 2), new PaddingOption("ABSENT_OPTIONAL", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        PaddingOption EF5;

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) $VALUES.clone();
        }
    }

    static {
        new Base64(-1, true, false);
        new Base64(76, false, true);
        new Base64(64, false, true);
    }

    public Base64(int i, boolean z, boolean z2) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        if (z && z2) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x018c, code lost:
    
        if (r13 == r8) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x018f, code lost:
    
        if (r13 == (-8)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0191, code lost:
    
        if (r2 == 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0194, code lost:
    
        coil3.UriKt$$ExternalSyntheticBUOutline0.m("The padding option is set to PRESENT, but the input is not properly padded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0199, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x019a, code lost:
    
        if (r14 != 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x019c, code lost:
    
        if (r4 != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x019f, code lost:
    
        if (r12 >= r3) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01aa, code lost:
    
        if (kotlin.io.encoding.Base64Kt.base64DecodeMap[r1[r12] & 255] == (-1)) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ad, code lost:
    
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b0, code lost:
    
        if (r12 < r3) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b2, code lost:
    
        if (r15 != r9) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b4, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b5, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ba, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01bb, code lost:
    
        r0 = r1[r12] & 255;
        r1 = new java.lang.StringBuilder("Symbol '");
        r1.append((char) r0);
        r1.append("'(");
        kotlin.text.CharsKt__CharKt.checkRadix(8);
        r0 = java.lang.Integer.toString(r0, 8);
        r0.getClass();
        r1.append(r0);
        r1.append(") at index ");
        coil3.UriKt$$ExternalSyntheticBUOutline0.m(androidx.camera.camera2.pipe.CameraDevices$CC.m(r1, r12 - 1, " is prohibited after the pad character"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01ea, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01eb, code lost:
    
        coil3.UriKt$$ExternalSyntheticBUOutline0.m("The pad bits must be zeros");
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01f0, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01f1, code lost:
    
        coil3.UriKt$$ExternalSyntheticBUOutline0.m("The last unit of input does not have enough bits");
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01f6, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] decode$default(kotlin.io.encoding.Base64 r18, java.lang.String r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.Base64.decode$default(kotlin.io.encoding.Base64, java.lang.String, int, int):byte[]");
    }
}
