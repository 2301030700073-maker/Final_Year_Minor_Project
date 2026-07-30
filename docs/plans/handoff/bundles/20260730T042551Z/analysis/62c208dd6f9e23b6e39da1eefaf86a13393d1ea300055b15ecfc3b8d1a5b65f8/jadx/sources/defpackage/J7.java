package defpackage;

/* loaded from: classes.dex */
public final class J7 {

    /* renamed from: do, reason: not valid java name */
    public int f1590do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f1591do;

    /* renamed from: for, reason: not valid java name */
    public int f1592for;

    /* renamed from: if, reason: not valid java name */
    public int f1593if;

    public J7() {
        int highestOneBit = Integer.bitCount(8) != 1 ? Integer.highestOneBit(7) << 1 : 8;
        this.f1592for = highestOneBit - 1;
        this.f1591do = new int[highestOneBit];
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1009do(int i) {
        int[] iArr = this.f1591do;
        int i2 = this.f1593if;
        iArr[i2] = i;
        int i3 = this.f1592for & (i2 + 1);
        this.f1593if = i3;
        int i4 = this.f1590do;
        if (i3 == i4) {
            int length = iArr.length;
            int i5 = length - i4;
            int i6 = length << 1;
            if (i6 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i6];
            System.arraycopy(iArr, i4, iArr2, 0, i5);
            System.arraycopy(this.f1591do, 0, iArr2, i5, this.f1590do);
            this.f1591do = iArr2;
            this.f1590do = 0;
            this.f1593if = length;
            this.f1592for = i6 - 1;
        }
    }
}
