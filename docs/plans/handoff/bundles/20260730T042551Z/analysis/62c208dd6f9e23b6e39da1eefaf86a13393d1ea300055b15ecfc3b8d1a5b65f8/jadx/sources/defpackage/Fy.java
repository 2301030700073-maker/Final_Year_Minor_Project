package defpackage;

import com.facebook.internal.NativeProtocol;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class Fy implements InterfaceC0451Qh {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f1101do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f1102do = NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ey f1103do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final File f1104do;

    /* renamed from: Fy$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f1105do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final byte[] f1106do;

        public Cdo(byte[] bArr, int i) {
            this.f1106do = bArr;
            this.f1105do = i;
        }
    }

    public Fy(File file) {
        this.f1104do = file;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0074  */
    @Override // defpackage.InterfaceC0451Qh
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String mo658do() {
        /*
            r10 = this;
            java.io.File r0 = r10.f1104do
            boolean r0 = r0.exists()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto Lb
            goto L20
        Lb:
            java.io.File r0 = r10.f1104do
            Ey r3 = r10.f1103do
            if (r3 != 0) goto L1c
            Ey r3 = new Ey     // Catch: java.io.IOException -> L19
            r3.<init>(r0)     // Catch: java.io.IOException -> L19
            r10.f1103do = r3     // Catch: java.io.IOException -> L19
            goto L1c
        L19:
            j$.util.Objects.toString(r0)
        L1c:
            Ey r0 = r10.f1103do
            if (r0 != 0) goto L22
        L20:
            r4 = r2
            goto L70
        L22:
            r3 = 1
            int[] r3 = new int[r3]
            r3[r1] = r1
            int r0 = r0.m529const()
            byte[] r0 = new byte[r0]
            Ey r4 = r10.f1103do     // Catch: java.io.IOException -> L69
            monitor-enter(r4)     // Catch: java.io.IOException -> L69
            Ey$do r5 = r4.f934do     // Catch: java.lang.Throwable -> L66
            int r5 = r5.f941do     // Catch: java.lang.Throwable -> L66
            r6 = 0
        L35:
            int r7 = r4.f939new     // Catch: java.lang.Throwable -> L66
            if (r6 >= r7) goto L64
            Ey$do r5 = r4.m527case(r5)     // Catch: java.lang.Throwable -> L66
            Ey$if r7 = new Ey$if     // Catch: java.lang.Throwable -> L66
            r7.<init>(r5)     // Catch: java.lang.Throwable -> L66
            int r8 = r5.f942if     // Catch: java.lang.Throwable -> L66
            r9 = r3[r1]     // Catch: java.lang.Throwable -> L5f
            r7.read(r0, r9, r8)     // Catch: java.lang.Throwable -> L5f
            r9 = r3[r1]     // Catch: java.lang.Throwable -> L5f
            int r9 = r9 + r8
            r3[r1] = r9     // Catch: java.lang.Throwable -> L5f
            r7.close()     // Catch: java.lang.Throwable -> L66
            int r7 = r5.f941do     // Catch: java.lang.Throwable -> L66
            int r7 = r7 + 4
            int r5 = r5.f942if     // Catch: java.lang.Throwable -> L66
            int r7 = r7 + r5
            int r5 = r4.m534public(r7)     // Catch: java.lang.Throwable -> L66
            int r6 = r6 + 1
            goto L35
        L5f:
            r5 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L66
            throw r5     // Catch: java.lang.Throwable -> L66
        L64:
            monitor-exit(r4)     // Catch: java.io.IOException -> L69
            goto L69
        L66:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.io.IOException -> L69
            throw r5     // Catch: java.io.IOException -> L69
        L69:
            Fy$do r4 = new Fy$do
            r3 = r3[r1]
            r4.<init>(r0, r3)
        L70:
            if (r4 != 0) goto L74
            r3 = r2
            goto L7d
        L74:
            int r0 = r4.f1105do
            byte[] r3 = new byte[r0]
            byte[] r4 = r4.f1106do
            java.lang.System.arraycopy(r4, r1, r3, r1, r0)
        L7d:
            if (r3 == 0) goto L86
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r0 = defpackage.Fy.f1101do
            r2.<init>(r3, r0)
        L86:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Fy.mo658do():java.lang.String");
    }

    @Override // defpackage.InterfaceC0451Qh
    /* renamed from: for, reason: not valid java name */
    public final void mo659for() {
        J8.m1016if(this.f1103do);
        this.f1103do = null;
    }

    @Override // defpackage.InterfaceC0451Qh
    /* renamed from: if, reason: not valid java name */
    public final void mo660if(long j, String str) {
        File file = this.f1104do;
        if (this.f1103do == null) {
            try {
                this.f1103do = new Ey(file);
            } catch (IOException unused) {
                Objects.toString(file);
            }
        }
        int i = this.f1102do;
        if (this.f1103do == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i2 = i / 4;
            if (str.length() > i2) {
                str = "..." + str.substring(str.length() - i2);
            }
            this.f1103do.m530do(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f1101do));
            while (!this.f1103do.m533new() && this.f1103do.m529const() > i) {
                this.f1103do.m536this();
            }
        } catch (IOException unused2) {
        }
    }
}
