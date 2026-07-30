package defpackage;

/* loaded from: classes3.dex */
public abstract class XI extends FM {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[][] f4495do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[][] f4498if;

    /* renamed from: do, reason: not valid java name */
    public static final int[] f4494do = {1, 1, 1};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f4497if = {1, 1, 1, 1, 1};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f4496for = {1, 1, 1, 1, 1, 1};

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f4495do = iArr;
        int[][] iArr2 = new int[20][];
        f4498if = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr3 = f4495do[i - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i2 = 0; i2 < iArr3.length; i2++) {
                iArr4[i2] = iArr3[(iArr3.length - i2) - 1];
            }
            f4498if[i] = iArr4;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m2823for(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return m2824new(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        r5 = defpackage.C3876vj.f16115do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003e, code lost:
    
        if (defpackage.Sy.f3566do == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        throw new defpackage.C3876vj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        throw defpackage.C3876vj.f16115do;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m2824new(java.lang.CharSequence r5) {
        /*
            int r0 = r5.length()
            int r1 = r0 + (-1)
            r2 = 0
        L7:
            r3 = 9
            if (r1 < 0) goto L28
            char r4 = r5.charAt(r1)
            int r4 = r4 + (-48)
            if (r4 < 0) goto L19
            if (r4 > r3) goto L19
            int r2 = r2 + r4
            int r1 = r1 + (-2)
            goto L7
        L19:
            vj r5 = defpackage.C3876vj.f16115do
            boolean r5 = defpackage.Sy.f3566do
            if (r5 == 0) goto L25
            vj r5 = new vj
            r5.<init>()
            goto L27
        L25:
            vj r5 = defpackage.C3876vj.f16115do
        L27:
            throw r5
        L28:
            int r2 = r2 * 3
        L2a:
            int r0 = r0 + (-2)
            if (r0 < 0) goto L49
            char r1 = r5.charAt(r0)
            int r1 = r1 + (-48)
            if (r1 < 0) goto L3a
            if (r1 > r3) goto L3a
            int r2 = r2 + r1
            goto L2a
        L3a:
            vj r5 = defpackage.C3876vj.f16115do
            boolean r5 = defpackage.Sy.f3566do
            if (r5 == 0) goto L46
            vj r5 = new vj
            r5.<init>()
            goto L48
        L46:
            vj r5 = defpackage.C3876vj.f16115do
        L48:
            throw r5
        L49:
            int r5 = 1000 - r2
            int r5 = r5 % 10
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.XI.m2824new(java.lang.CharSequence):int");
    }
}
