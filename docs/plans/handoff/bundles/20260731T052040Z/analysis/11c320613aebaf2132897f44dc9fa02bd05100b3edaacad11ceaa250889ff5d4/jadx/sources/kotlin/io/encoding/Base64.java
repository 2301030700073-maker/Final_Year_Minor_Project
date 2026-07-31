package kotlin.io.encoding;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Base64 {
    public static final Default Default = new Default(-1, false, false);
    public final boolean isMimeScheme;
    public final boolean isUrlSafe;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Default extends Base64 {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] decode$default(kotlin.io.encoding.Base64 r19, java.lang.CharSequence r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.Base64.decode$default(kotlin.io.encoding.Base64, java.lang.CharSequence, int, int):byte[]");
    }
}
