package coil3.fetch;

import coil3.Uri;
import coil3.request.Options;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DataUriFetcher implements Fetcher {
    public final /* synthetic */ int $r8$classId;
    public final Options options;
    public final Uri uri;

    public /* synthetic */ DataUriFetcher(Uri uri, Options options, int i) {
        this.$r8$classId = i;
        this.uri = uri;
        this.options = options;
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x04b3, code lost:
    
        if (r13 == r12) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04b6, code lost:
    
        if (r13 == (-8)) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04b8, code lost:
    
        if (r19 != false) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x04bc, code lost:
    
        if (r10 == kotlin.io.encoding.Base64.PaddingOption.PRESENT) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x04bf, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m("The padding option is set to PRESENT, but the input is not properly padded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x04c6, code lost:
    
        if (r18 != 0) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x04c8, code lost:
    
        if (r16 != false) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x04cb, code lost:
    
        if (r8 >= r2) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04d6, code lost:
    
        if (kotlin.io.encoding.Base64Kt.base64DecodeMap[r21[r8] & 255] == (-1)) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04d9, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04dc, code lost:
    
        if (r8 < r2) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04de, code lost:
    
        if (r15 != r4) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x04e0, code lost:
    
        r1 = new okio.Buffer();
        r1.m875write(r4, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:?, code lost:
    
        return new coil3.fetch.SourceFetchResult(kotlin.text.RegexKt.ImageSource$default(r1, r0.fileSystem), r5, coil3.decode.DataSource.MEMORY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x04f6, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04fd, code lost:
    
        r0 = r21[r8] & 255;
        r1 = new java.lang.StringBuilder("Symbol '");
        r1.append((char) r0);
        r1.append("'(");
        coil3.util.UtilsKt.checkRadix(8);
        r0 = java.lang.Integer.toString(r0, 8);
        r0.getClass();
        r1.append(r0);
        r1.append(") at index ");
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(androidx.compose.ui.Modifier.CC.m(r1, r8 - 1, " is prohibited after the pad character"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x052e, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m("The pad bits must be zeros");
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0535, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m("The last unit of input does not have enough bits");
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0178  */
    @Override // coil3.fetch.Fetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetch(coil3.intercept.EngineInterceptor$fetch$1 r24) {
        /*
            Method dump skipped, instructions count: 1374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.fetch.DataUriFetcher.fetch(coil3.intercept.EngineInterceptor$fetch$1):java.lang.Object");
    }
}
