package defpackage;

/* loaded from: classes3.dex */
public final class M4 {

    /* renamed from: do, reason: not valid java name */
    public int f2094do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f2095do;

    /* renamed from: do, reason: not valid java name */
    public final int m1391do() {
        if ((this.f2094do & 128) != 0) {
            return ((int[]) this.f2095do)[7];
        }
        return 65535;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1392if(int i, int i2) {
        if (i >= 0) {
            int[] iArr = (int[]) this.f2095do;
            if (i >= iArr.length) {
                return;
            }
            this.f2094do = (1 << i) | this.f2094do;
            iArr[i] = i2;
        }
    }

    public /* synthetic */ M4(int i) {
        this.f2095do = new byte[i];
        this.f2094do = 0;
    }
}
