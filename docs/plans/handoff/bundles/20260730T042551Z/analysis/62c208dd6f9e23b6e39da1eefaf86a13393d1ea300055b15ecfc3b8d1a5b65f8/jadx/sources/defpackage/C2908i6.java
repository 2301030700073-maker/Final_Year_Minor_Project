package defpackage;

import java.lang.reflect.Array;

/* renamed from: i6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2908i6 {

    /* renamed from: do, reason: not valid java name */
    public final int f13426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[][] f13427do;

    /* renamed from: if, reason: not valid java name */
    public final int f13428if;

    public C2908i6(int i, int i2) {
        this.f13427do = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i2, i);
        this.f13426do = i;
        this.f13428if = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public final byte m6874do(int i, int i2) {
        return this.f13427do[i2][i];
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6875for(int i, int i2, boolean z) {
        this.f13427do[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6876if(int i, int i2, int i3) {
        this.f13427do[i2][i] = (byte) i3;
    }

    public final String toString() {
        int i = this.f13426do;
        int i2 = this.f13428if;
        StringBuilder sb = new StringBuilder((i * 2 * i2) + 2);
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr = this.f13427do[i3];
            for (int i4 = 0; i4 < i; i4++) {
                byte b = bArr[i4];
                if (b == 0) {
                    sb.append(" 0");
                } else if (b != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
