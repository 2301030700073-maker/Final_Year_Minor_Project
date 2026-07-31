package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import j$.nio.file.attribute.a0;
import j$.nio.file.i0;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class h extends j$.nio.file.h {
    public final String a;
    public final String b;
    public final l c;

    public h(l lVar, String str, String str2) {
        this.c = lVar;
        this.a = str;
        this.b = str2;
    }

    @Override // j$.nio.file.h
    public final j$.nio.file.spi.d C() {
        return this.c;
    }

    @Override // j$.nio.file.h
    public final Set E() {
        return j$.com.android.tools.r8.a.I(new Object[]{"basic"});
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.h
    public final Iterable f() {
        throw new UnsupportedOperationException("");
    }

    @Override // j$.nio.file.h
    public final boolean isOpen() {
        return true;
    }

    @Override // j$.nio.file.h
    public final Path j(String str, String[] strArr) {
        if (strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            for (String str2 : strArr) {
                if (!str2.isEmpty()) {
                    if (sb.length() > 0) {
                        sb.append('/');
                    }
                    sb.append(str2);
                }
            }
            str = sb.toString();
        }
        return new n(this, str, this.a, this.b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f1, code lost:
    
        if (j$.com.android.tools.r8.a.V(r0, r7) == '&') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0120, code lost:
    
        r4 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x013b, code lost:
    
        if (r7 != ']') goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x013d, code lost:
    
        r1.append("]]");
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x014d, code lost:
    
        throw new java.util.regex.PatternSyntaxException("Missing ']", r0, r4 - 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fe A[SYNTHETIC] */
    @Override // j$.nio.file.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.nio.file.z l(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.desugar.sun.nio.fs.h.l(java.lang.String):j$.nio.file.z");
    }

    @Override // j$.nio.file.h
    public final Iterable m() {
        return j$.com.android.tools.r8.a.G(new Object[]{new n(this, "/", this.a, this.b)});
    }

    @Override // j$.nio.file.h
    public final String p() {
        return "/";
    }

    @Override // j$.nio.file.h
    public final a0 r() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.h
    public final boolean t() {
        return false;
    }

    @Override // j$.nio.file.h
    public final i0 v() {
        throw new UnsupportedOperationException();
    }
}
