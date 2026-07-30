package defpackage;

import com.facebook.internal.security.CertificateUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* renamed from: sp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3705sp implements Closeable, Flushable {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f15516do = new String[128];

    /* renamed from: break, reason: not valid java name */
    public final String f15517break;

    /* renamed from: catch, reason: not valid java name */
    public String f15518catch;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Writer f15519do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f15520do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f15521do;

    /* renamed from: for, reason: not valid java name */
    public int f15522for;

    static {
        for (int i = 0; i <= 31; i++) {
            f15516do[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f15516do;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C3705sp(Writer writer) {
        int[] iArr = new int[32];
        this.f15521do = iArr;
        this.f15522for = 0;
        if (iArr.length == 0) {
            int[] iArr2 = new int[0 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, 0);
            this.f15521do = iArr2;
        }
        int[] iArr3 = this.f15521do;
        int i = this.f15522for;
        this.f15522for = i + 1;
        iArr3[i] = 6;
        this.f15517break = CertificateUtil.DELIMITER;
        this.f15520do = true;
        this.f15519do = writer;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8139case() {
        if (this.f15518catch != null) {
            int m8141for = m8141for();
            if (m8141for == 5) {
                this.f15519do.write(44);
            } else if (m8141for != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            this.f15521do[this.f15522for - 1] = 4;
            m8143new(this.f15518catch);
            this.f15518catch = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f15519do.close();
        int i = this.f15522for;
        if (i > 1 || (i == 1 && this.f15521do[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f15522for = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8140do(boolean z) {
        int m8141for = m8141for();
        if (m8141for == 1) {
            this.f15521do[this.f15522for - 1] = 2;
            return;
        }
        Writer writer = this.f15519do;
        if (m8141for == 2) {
            writer.append(',');
            return;
        }
        if (m8141for == 4) {
            writer.append((CharSequence) this.f15517break);
            this.f15521do[this.f15522for - 1] = 5;
        } else {
            if (m8141for != 6) {
                if (m8141for != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
            if (!z) {
                throw new IllegalStateException("JSON must start with an array or an object.");
            }
            this.f15521do[this.f15522for - 1] = 7;
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.f15522for == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f15519do.flush();
    }

    /* renamed from: for, reason: not valid java name */
    public final int m8141for() {
        int i = this.f15522for;
        if (i != 0) {
            return this.f15521do[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8142if(int i, int i2, String str) {
        int m8141for = m8141for();
        if (m8141for != i2 && m8141for != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f15518catch == null) {
            this.f15522for--;
            this.f15519do.write(str);
        } else {
            throw new IllegalStateException("Dangling name: " + this.f15518catch);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8143new(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String[] r0 = defpackage.C3705sp.f15516do
            java.io.Writer r1 = r8.f15519do
            java.lang.String r2 = "\""
            r1.write(r2)
            int r3 = r9.length()
            r4 = 0
            r5 = 0
        Lf:
            if (r4 >= r3) goto L3a
            char r6 = r9.charAt(r4)
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L1e
            r6 = r0[r6]
            if (r6 != 0) goto L2b
            goto L37
        L1e:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L25
            java.lang.String r6 = "\\u2028"
            goto L2b
        L25:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L37
            java.lang.String r6 = "\\u2029"
        L2b:
            if (r5 >= r4) goto L32
            int r7 = r4 - r5
            r1.write(r9, r5, r7)
        L32:
            r1.write(r6)
            int r5 = r4 + 1
        L37:
            int r4 = r4 + 1
            goto Lf
        L3a:
            if (r5 >= r3) goto L40
            int r3 = r3 - r5
            r1.write(r9, r5, r3)
        L40:
            r1.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3705sp.m8143new(java.lang.String):void");
    }
}
