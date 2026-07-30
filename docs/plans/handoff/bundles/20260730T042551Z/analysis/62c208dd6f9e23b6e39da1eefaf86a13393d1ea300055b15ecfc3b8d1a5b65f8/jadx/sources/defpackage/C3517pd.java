package defpackage;

import java.util.Arrays;

/* renamed from: pd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3517pd {

    /* renamed from: do, reason: not valid java name */
    public final int f14941do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f14942do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f14943do;

    /* renamed from: if, reason: not valid java name */
    public final int f14944if;

    public C3517pd(String str, int i, int i2) {
        this.f14942do = str;
        this.f14944if = i;
        this.f14941do = i2;
        byte[] bArr = new byte[i * i2];
        this.f14943do = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7797do(int i, int i2, int i3, int i4) {
        if (i < 0) {
            int i5 = this.f14941do;
            i += i5;
            i2 += 4 - ((i5 + 4) % 8);
        }
        int i6 = this.f14944if;
        if (i2 < 0) {
            i2 += i6;
            i += 4 - ((i6 + 4) % 8);
        }
        this.f14943do[(i * i6) + i2] = (byte) ((this.f14942do.charAt(i3) & (1 << (8 - i4))) == 0 ? 0 : 1);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7798if(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        m7797do(i4, i5, i3, 1);
        int i6 = i2 - 1;
        m7797do(i4, i6, i3, 2);
        int i7 = i - 1;
        m7797do(i7, i5, i3, 3);
        m7797do(i7, i6, i3, 4);
        m7797do(i7, i2, i3, 5);
        m7797do(i, i5, i3, 6);
        m7797do(i, i6, i3, 7);
        m7797do(i, i2, i3, 8);
    }
}
