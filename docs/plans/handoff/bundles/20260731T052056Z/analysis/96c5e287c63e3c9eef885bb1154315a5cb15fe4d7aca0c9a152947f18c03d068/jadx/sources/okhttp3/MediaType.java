package okhttp3;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MediaType {
    public final String mediaType;
    public final String[] parameterNamesAndValues;
    public final String subtype;
    public final String type;
    public static final Regex TYPE_SUBTYPE = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final Regex PARAMETER = new Regex(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public MediaType(String str, String str2, String str3, String[] strArr) {
        str.getClass();
        strArr.getClass();
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0024 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.nio.charset.Charset charset(java.nio.charset.Charset r6) {
        /*
            r5 = this;
            java.lang.String[] r5 = r5.parameterNamesAndValues
            int r0 = r5.length
            int r0 = r0 + (-1)
            r1 = 2
            r2 = 0
            int r0 = coil3.util.ContextsKt.getProgressionLastElement(r2, r0, r1)
            if (r0 < 0) goto L21
        Ld:
            r1 = r5[r2]
            java.lang.String r3 = "charset"
            r4 = 1
            boolean r1 = kotlin.text.StringsKt__StringsJVMKt.equals(r1, r3, r4)
            if (r1 == 0) goto L1c
            int r2 = r2 + r4
            r5 = r5[r2]
            goto L22
        L1c:
            if (r2 == r0) goto L21
            int r2 = r2 + 2
            goto Ld
        L21:
            r5 = 0
        L22:
            if (r5 != 0) goto L25
            return r6
        L25:
            java.nio.charset.Charset r5 = java.nio.charset.Charset.forName(r5)     // Catch: java.lang.IllegalArgumentException -> L2a
            return r5
        L2a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MediaType.charset(java.nio.charset.Charset):java.nio.charset.Charset");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).mediaType, this.mediaType);
    }

    public final int hashCode() {
        return this.mediaType.hashCode();
    }

    public final String toString() {
        return this.mediaType;
    }
}
