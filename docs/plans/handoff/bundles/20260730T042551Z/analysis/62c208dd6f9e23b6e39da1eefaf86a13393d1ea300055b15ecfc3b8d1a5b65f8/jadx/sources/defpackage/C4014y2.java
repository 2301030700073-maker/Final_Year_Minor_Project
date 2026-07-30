package defpackage;

/* renamed from: y2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4014y2 {

    /* renamed from: do, reason: not valid java name */
    public float f16666do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f16667do;

    /* renamed from: for, reason: not valid java name */
    public float f16668for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f16669for;

    /* renamed from: if, reason: not valid java name */
    public float f16670if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f16671if;

    /* renamed from: new, reason: not valid java name */
    public final float f16672new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final int f16673new;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b9, code lost:
    
        if (r6 > r3.f16666do) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c8, code lost:
    
        if (r3.f16668for <= r3.f16666do) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4014y2(int r4, float r5, float r6, float r7, int r8, float r9, int r10, float r11, int r12, float r13) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4014y2.<init>(int, float, float, float, int, float, int, float, int, float):void");
    }

    /* renamed from: do, reason: not valid java name */
    public static C4014y2 m8698do(float f, float f2, float f3, float f4, int[] iArr, float f5, int[] iArr2, float f6, int[] iArr3) {
        C4014y2 c4014y2 = null;
        int i = 1;
        for (int i2 : iArr3) {
            int length = iArr2.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr2[i3];
                int length2 = iArr.length;
                int i5 = 0;
                while (i5 < length2) {
                    int i6 = i5;
                    int i7 = length2;
                    int i8 = i3;
                    int i9 = length;
                    C4014y2 c4014y22 = new C4014y2(i, f2, f3, f4, iArr[i5], f5, i4, f6, i2, f);
                    float f7 = c4014y22.f16672new;
                    if (c4014y2 == null || f7 < c4014y2.f16672new) {
                        if (f7 == 0.0f) {
                            return c4014y22;
                        }
                        c4014y2 = c4014y22;
                    }
                    i++;
                    i5 = i6 + 1;
                    length2 = i7;
                    i3 = i8;
                    length = i9;
                }
                i3++;
            }
        }
        return c4014y2;
    }

    public final String toString() {
        return "Arrangement [priority=" + this.f16667do + ", smallCount=" + this.f16671if + ", smallSize=" + this.f16666do + ", mediumCount=" + this.f16669for + ", mediumSize=" + this.f16670if + ", largeCount=" + this.f16673new + ", largeSize=" + this.f16668for + ", cost=" + this.f16672new + "]";
    }
}
